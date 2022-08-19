
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
         tests_failed_SP, tests_failed_SN;
   logic tests_passed_i, tests_failed_i;
   
   
   

   assign rst_ni = ~btn[0];
   assign led[0] = tests_passed_SP;
   assign led[1] = tests_failed_SP;
   assign led[3] = running_SP;
   

   assign ser_tx = ftdi_rxd;
   assign ser_rx = ftdi_txd;

   cv32e40x_tb_wrapper
        #(
          .INSTR_RDATA_WIDTH (32),
          .RAM_ADDR_WIDTH    (10),
          .BOOT_ADDR         ('h80)
         )
    cv32e40x_tb_wrapper_i
        (
         .clk_i          ( clk_25mhz    ),
         .rst_ni         (  rst_ni      ),
         .fetch_enable_i ( fetch_enable ),
         .tests_passed_o ( tests_passed_i),
         .tests_failed_o ( tests_failed_i ),
         .exit_valid_o   ( exit_valid   ),
         .exit_value_o   ( exit_value   ),
         .ser_tx_o (ser_tx),
         .ser_rx_i (ser_rx)
        );

   always_comb begin
      tests_failed_SN = tests_failed_SP;
      tests_passed_SN = tests_passed_SP;

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
      end else begin
         tests_failed_SP <= tests_failed_SN;
         tests_passed_SP <= tests_passed_SN;
         running_SP <= 1'b1;
      end
   end
         

   endmodule
