
module synth_top ( input clk_25mhz,
                   input [6:0]        btn,
	                 output logic [7:0] led
                  );

   // testbench result
   logic                              tests_passed;
   logic                              tests_failed;
   logic                              exit_valid;
   logic [31:0]                       exit_value;

   assign rst_ni = ~btn[0];
   assign led[0] = tests_passed;
   

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
         .tests_passed_o ( tests_passed ),
         .tests_failed_o ( tests_failed ),
         .exit_valid_o   ( exit_valid   ),
         .exit_value_o   ( exit_value   )
        );

   endmodule
