
module synth_top ( input clk_25mhz,
                   input [6:0]        btn,
	                 output logic [7:0] led,
                   output ftdi_rxd,
                   input ftdi_txd
                  );

   // testbench result
   logic                              tests_passed;
   logic                              tests_failed;
   logic                              exit_valid;
   logic [31:0]                       exit_value;
   
   logic                              ser_tx, ser_rx;

   logic running_SN, running_SP, tests_passed_SN, tests_passed_SP,
         tests_failed_SP, tests_failed_SN, reset_SN, reset_SP;
   logic tests_passed_i, tests_failed_i;
   logic clk_blink_SN, clk_blink_SP;
   logic req_SN, req_SP;
   
   logic instr_req;
   logic instr_gnt;
   
   logic [31:0] cnt_SN, cnt_SP;
   logic [31:0] cnt2_SN, cnt2_SP;

   assign rst_ni = btn[0];

   assign fetch_enable = 1'b1;
   
   
   always_comb begin
      led[0] = tests_passed_SP;
      led[1] = tests_failed_SP;
      led[2] = running_SP;
      led[3] = instr_req;
      led[4] = instr_gnt;
      led[5] = clk_blink_SP;
      led[6] = 1'b0;
      led[7] = 1'b1;
      
   end
   
   assign ftdi_rxd = ser_tx;
   assign ser_rx = ftdi_txd;

   cv32e40x_tb_wrapper
        #(
          .INSTR_RDATA_WIDTH (32),
          .RAM_ADDR_WIDTH    (10),
          .BOOT_ADDR         ('h80)
         )
    cv32e40x_tb_wrapper_i
        (
         .clk_i          ( clk_25mhz  ),
         .rst_ni         (  rst_ni      ),
         .fetch_enable_i ( fetch_enable ),
         .tests_passed_o ( tests_passed_i),
         .tests_failed_o ( tests_failed_i ),
         .exit_valid_o   ( exit_valid   ),
         .exit_value_o   ( exit_value   ),
         .ser_tx_o (ser_tx),
         .ser_rx_i (ser_rx),
         .instr_req_o (instr_req),
         .instr_gnt_o (instr_gnt)
        );

   always_comb begin
      tests_failed_SN = tests_failed_SP;
      tests_passed_SN = tests_passed_SP;
      cnt_SN = cnt_SP + 1;
      cnt2_SN = cnt2_SP + 1;
      
      clk_blink_SN = clk_blink_SP;
      

      if (cnt_SP == 32'd25000000) begin
         cnt_SN = 32'b0;
         clk_blink_SN = ~clk_blink_SP;
      end        

      if (tests_passed_i)
        tests_passed_SN = 1'b1;

      if (tests_failed_i)
        tests_failed_SN = 1'b1;
   end

   always_ff @(posedge clk_25mhz, negedge rst_ni) begin
      if (~rst_ni) begin
         tests_failed_SP <= 1'b0;
         tests_passed_SP <= 1'b0;
         running_SP <= 1'b0;
         cnt_SP <= 32'b0;
         clk_blink_SP <= 1'b0;
         cnt2_SP <= 1'b0;
         req_SP <= 1'b0;
      end else begin
         tests_failed_SP <= tests_failed_SN;
         tests_passed_SP <= tests_passed_SN;
         running_SP <= 1'b1;
         cnt_SP <= cnt_SN;
         cnt2_SP <= cnt2_SN;
         clk_blink_SP <= clk_blink_SN;
         req_SP <= req_SN;
      end
   end
         

   endmodule
