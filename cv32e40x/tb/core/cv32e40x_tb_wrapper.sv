// Copyright 2018 Robert Balas <balasr@student.ethz.ch>
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// Wrapper for a CV32E40X testbench, containing CV32E40X, Memory and stdout peripheral
// Contributor: Robert Balas <balasr@student.ethz.ch>
// Module renamed from riscv_wrapper to cv32e40x_tb_wrapper because (1) the
// name of the core changed, and (2) the design has a cv32e40x_wrapper module.
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-0.51

module cv32e40x_tb_wrapper import cv32e40x_pkg::*;   
   #(parameter // Parameters used by TB
               INSTR_RDATA_WIDTH = 32,
                RAM_ADDR_WIDTH    = 20,
                BOOT_ADDR         = 'h80,
                DM_HALTADDRESS    = 32'h1A11_0800,
                HART_ID           = 32'h0000_0000,
                IMP_ID            = 4'b0000,
                // Parameters used by DUT
                NUM_MHPMCOUNTERS  = 1
    )
    (input logic         clk_i,
     input logic         rst_ni, 
     input logic         fetch_enable_i,
     output logic        tests_passed_o,
     output logic        tests_failed_o,
     output logic [31:0] exit_value_o,
     output logic        exit_valid_o
     );


    localparam JTAG_BOOT            = 'b0;
    localparam  CLUSTER_ID         = 6'd0;
    localparam CORE_ID            = 4'd0;

    localparam CORE_MHARTID       = {21'b0, CLUSTER_ID, 1'b0, CORE_ID};
    localparam NrHarts                               = 1;
    localparam logic [NrHarts-1:0] SELECTABLE_HARTS  = 1 << CORE_MHARTID;
    localparam HARTINFO           = {8'h0, 4'h2, 3'b0, 1'b1, dm::DataCount, dm::DataAddr};

    // signals connecting core to memory
    logic                        instr_req;
    logic                        instr_gnt;
    logic                        instr_rvalid;
    logic [31:0]                 instr_addr;
    logic [INSTR_RDATA_WIDTH-1:0] instr_rdata;

    logic                        data_req;
    logic                        data_gnt;
    logic                         data_rvalid;
    logic [31:0]                 data_addr;
    logic                        data_we;
    logic [3:0]                  data_be;
    logic [31:0]                 data_rdata;
    logic [31:0]                 data_wdata;

    // jtag openocd bridge signals
    logic                        sim_jtag_tck;
    logic                        sim_jtag_tms;
    logic                        sim_jtag_tdi;
    logic                        sim_jtag_trstn;
    logic                        sim_jtag_tdo;
    logic [31:0]                 sim_jtag_exit;
    logic                        sim_jtag_enable;

    // signals for debug unit
    logic                        debug_req_ready;
    dm::dmi_resp_t               debug_resp;
    logic                        jtag_req_valid;
    dm::dmi_req_t                jtag_dmi_req;
    logic                        jtag_resp_ready;
    logic                        jtag_resp_valid;
    logic [NrHarts-1:0]          dm_debug_req;
    logic                        ndmreset, ndmreset_n;

    // debug unit slave interface
    logic                        dm_grant;
    logic                        dm_rvalid;
    logic                        dm_req;
    logic                        dm_we;
    logic [31:0]                 dm_addr;
    logic [31:0]                 dm_wdata;
    logic [31:0]                 dm_rdata;
    logic [3:0]                  dm_be;
   logic                         dm_gnt;

    // debug unit master interface (system bus access)
    logic                        sb_req;
    logic [31:0]                 sb_addr;
    logic                        sb_we;
    logic [31:0]                 sb_wdata;
    logic [3:0]                  sb_be;
    logic                        sb_gnt;
    logic                        sb_rvalid;
    logic [31:0]                 sb_rdata;

    // make jtag bridge work
    assign sim_jtag_enable = JTAG_BOOT;

    // irq signals (not used)
   logic                         irq;
    logic [0:4]                   irq_id_in;
    logic                         irq_ack;
    logic [0:4]                   irq_id_out;
    logic                         irq_sec;

   logic [SAMPLES_WIDTH - 1: 0]   samples_csr_i;
   logic [SIGNALS_WIDTH - 1: 0]   signals_csr_i;

   logic                          core_sleep_o;

   
   


    // interrupts (only timer for now)
    assign irq_sec     = '0;

   // eXtension Interface
    if_xif #(
             .X_NUM_RS    ( 2  ),
             .X_MISA      (32'h0 ) // 32'b01000000100000000000000000000000)
             ) xif();


    // instantiate the core
    cv32e40x_core #(
                 .NUM_MHPMCOUNTERS (NUM_MHPMCOUNTERS),
                    .B_EXT (1),
                    .X_EXT (1'b1), //enable hardware for xtension interface
                    .X_NUM_RS (2)  // we need three read ports form memory, to read 3 sorce regs at the same time
                )
    cv32e40x_core_i
        (
         // Clock and Reset
         .clk_i                  ( clk_i                ),
         .rst_ni                 ( rst_ni                ),

         .scan_cg_en_i           ( '0                    ),

         // Control interface: more or less static
         .boot_addr_i            ( BOOT_ADDR             ),
         .mtvec_addr_i           ( '0                    ), // TODO
         .dm_halt_addr_i         ( DM_HALTADDRESS        ),
         .mhartid_i              ( HART_ID               ),
         .mimpid_patch_i               ( IMP_ID                ),
         .dm_exception_addr_i    ( '0                    ), // TODO

         // Instruction memory interface
         .instr_req_o            ( instr_req             ),
         .instr_gnt_i            ( instr_gnt             ),
         .instr_rvalid_i         ( instr_rvalid          ),
         .instr_addr_o           ( instr_addr            ),
         .instr_memtype_o        (                       ), // TODO: should the core tb check this?
         .instr_prot_o           (                       ), // TODO: should the core tb check this?
         .instr_dbg_o            (                       ), // TODO: should the core tb check this?
         .instr_rdata_i          ( instr_rdata           ),
         .instr_err_i            ( 1'b0                  ),

         // Data memory interface
         .data_req_o             ( data_req              ),
         .data_gnt_i             ( data_gnt              ),
         .data_rvalid_i          ( data_rvalid           ),
         .data_we_o              ( data_we               ),
         .data_be_o              ( data_be               ),
         .data_addr_o            ( data_addr             ),
         .data_memtype_o         (                       ), // TODO: should the core tb check this?
         .data_prot_o            (                       ), // TODO: should the core tb check this?
         .data_dbg_o             (                       ), // TODO
         .data_err_i             ( 1'b0                  ),
         .data_atop_o            (                       ),
         .data_exokay_i          ( 1'b1                  ),
         .data_wdata_o           ( data_wdata            ),
         .data_rdata_i           ( data_rdata            ),

         // Cycle Count
         .mcycle_o               (                       ), // TODO

         // eXtension interface
         .xif_compressed_if      ( xif           ),
         .xif_issue_if           ( xif                 ),
         .xif_commit_if          ( xif                 ),
         .xif_mem_if             ( xif                   ),
         .xif_mem_result_if      ( xif            ),
         .xif_result_if          ( xif                ),

         // Interrupts
         .irq_i                  ( {32{1'b0}}            ),

         .clic_irq_i             (  1'b0                 ), // TODO
         .clic_irq_id_i          ( 5'h0                 ), // TODO
         //.clic_irq_il_i          (  8'h0                 ), // TODO
         .clic_irq_priv_i        (  2'h0                 ), // TODO
        // .clic_irq_hv_i          (  1'b0                 ), // TODO
         //.clic_irq_id_o          (                       ), // TODO
         //.clic_irq_mode_o        (                       ),
         //.clic_irq_exit_o        (                       ),
         //new pins
         .clic_irq_level_i (8'h0),
         .clic_irq_shv_i (1'h0),

         //these interrupt interface outputs do not exist anymore seemingly
         
         // Fencei flush handshake
         .fencei_flush_req_o     (                       ),
         .fencei_flush_ack_i     ( 1'b0                  ),

         .debug_req_i            ( dm_debug_req),
         .debug_havereset_o      (                       ),
         .debug_running_o        (                       ),
         .debug_halted_o         (                       ),

         // CPU Control Signals
         .fetch_enable_i         ( fetch_enable_i        ),
         .core_sleep_o           ( core_sleep_o          ),

         //custom csr
         .samples_csr_o (samples_csr_i),
         .signals_csr_o (signals_csr_i)
       );

 // this handles read to RAM and memory mapped pseudo peripherals
    mm_ram #(
        .RAM_ADDR_WIDTH (RAM_ADDR_WIDTH),
        .INSTR_RDATA_WIDTH (INSTR_RDATA_WIDTH),
        .JTAG_BOOT(JTAG_BOOT)
    ) ram_i (
        .clk_i          ( clk_i          ),
        .rst_ni         ( rst_ni     ),

        // core instruction access
        .instr_req_i    ( instr_req       ),
        .instr_addr_i   ( instr_addr      ),
        .instr_rdata_o  ( instr_rdata     ),
        .instr_rvalid_o ( instr_rvalid    ),
        .instr_gnt_o    ( instr_gnt       ),

        // core data access
        .data_req_i     ( data_req        ),
        .data_addr_i    ( data_addr       ),
        .data_we_i      ( data_we         ),
        .data_be_i      ( data_be         ),
        .data_wdata_i   ( data_wdata      ),
        .data_rdata_o   ( data_rdata      ),
        .data_rvalid_o  ( data_rvalid     ),
        .data_gnt_o     ( data_gnt        ),

        // system bus access from debug unit
        .sb_req_i       ( sb_req          ),
        .sb_addr_i      ( sb_addr         ),
        .sb_we_i        ( sb_we           ),
        .sb_be_i        ( sb_be           ),
        .sb_wdata_i     ( sb_wdata        ),
        .sb_rdata_o     ( sb_rdata        ),
        .sb_rvalid_o    ( sb_rvalid       ),
        .sb_gnt_o       ( sb_gnt          ),

        // access to debug unit
        .dm_req_o       ( dm_req          ),
        .dm_addr_o      ( dm_addr         ),
        .dm_we_o        ( dm_we           ),
        .dm_be_o        ( dm_be           ),
        .dm_wdata_o     ( dm_wdata        ),
        .dm_rdata_i     ( dm_rdata        ),
        .dm_rvalid_i    ( dm_rvalid       ),
        .dm_gnt_i       ( dm_gnt          ),


        .irq_id_i       ( irq_id_out      ),
        .irq_ack_i      ( irq_ack         ),
        .irq_id_o       ( irq_id_in       ),
        .irq_o          ( irq             ),

        .tests_passed_o ( tests_passed_o  ),
        .tests_failed_o ( tests_failed_o  )
    );

   //     _ _____  _    ____ 
   //    | |_   _|/ \  / ___|
   //  _  | | | | / _ \| |  _ 
   // | |_| | | |/ ___ \ |_| |
   //  \___/  |_/_/   \_\____|
   

   // debug subsystem
    dmi_jtag #(
        .IdcodeValue          ( 32'h249511C3    )
    ) i_dmi_jtag (
        .clk_i                ( clk_i         ),
        .rst_ni               ( rst_ni          ),
        .testmode_i           ( 1'b0            ),
        .dmi_req_o            ( jtag_dmi_req    ),
        .dmi_req_valid_o      ( jtag_req_valid  ),
        .dmi_req_ready_i      ( debug_req_ready ),
        .dmi_resp_i           ( debug_resp      ),
        .dmi_resp_ready_o     ( jtag_resp_ready ),
        .dmi_resp_valid_i     ( jtag_resp_valid ),
        .dmi_rst_no           (                 ), // not connected
        .tck_i                ( sim_jtag_tck    ),
        .tms_i                ( sim_jtag_tms    ),
        .trst_ni              ( sim_jtag_trstn  ),
        .td_i                 ( sim_jtag_tdi    ),
        .td_o                 ( sim_jtag_tdo    ),
        .tdo_oe_o             (                 )
    );

    dm_top #(
       .NrHarts           ( NrHarts           ),
       .BusWidth          ( 32                ),
       .SelectableHarts   ( SELECTABLE_HARTS  )
    ) i_dm_top (

       .clk_i             ( clk             ),
       .rst_ni            ( rst_ni            ),
       .testmode_i        ( 1'b0              ),
       .ndmreset_o        ( ndmreset          ),
       .dmactive_o        (                   ), // active debug session TODO
       .debug_req_o       ( dm_debug_req      ),
       .unavailable_i     ( ~SELECTABLE_HARTS ),
       .hartinfo_i        ( HARTINFO          ),

       .slave_req_i       ( dm_req            ),
       .slave_we_i        ( dm_we             ),
       .slave_addr_i      ( dm_addr           ),
       .slave_be_i        ( dm_be             ),
       .slave_wdata_i     ( dm_wdata          ),
       .slave_rdata_o     ( dm_rdata          ),

       .master_req_o      ( sb_req            ),
       .master_add_o      ( sb_addr           ),
       .master_we_o       ( sb_we             ),
       .master_wdata_o    ( sb_wdata          ),
       .master_be_o       ( sb_be             ),
       .master_gnt_i      ( sb_gnt            ),
       .master_r_valid_i  ( sb_rvalid         ),
       .master_r_rdata_i  ( sb_rdata          ),

       .dmi_rst_ni        ( rst_ni            ),
       .dmi_req_valid_i   ( jtag_req_valid    ),
       .dmi_req_ready_o   ( debug_req_ready   ),
       .dmi_req_i         ( jtag_dmi_req      ),
       .dmi_resp_valid_o  ( jtag_resp_valid   ),
       .dmi_resp_ready_i  ( jtag_resp_ready   ),
       .dmi_resp_o        ( debug_resp        )
    );

   coproc coproc_i ( .clk_i (clk_i),
                      .rst_ni (rst_ni),
                      .xif_compressed (xif),
                      .xif_issue (xif),
                      .xif_commit (xif),
                      .xif_mem (xif),
                      .xif_mem_result (xif),
                      .xif_result (xif),
                      .signals_csr_i (signals_csr_i),
                      .samples_csr_i (samples_csr_i));
   
                                      

endmodule // cv32e40x_tb_wrapper
