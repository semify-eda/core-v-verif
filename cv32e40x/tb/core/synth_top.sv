
module synth_top ( input clk_100mhz,
                   input              rst_ni,
                   input [3:0]        BTN,
                   input [3:0]        SW, 
	                 output logic [3:0] LED,
	                 output logic       RGB0_Blue,
	                 output logic       RGB0_Green,
	                 output logic       RGB0_Red,
	                 output logic       RGB1_Blue,
	                 output logic       RGB1_Green,
	                 output logic       RGB1_Red,
	                 output logic       RGB2_Blue,
	                 output logic       RGB2_Green,
	                 output logic       RGB2_Red,
	                 output logic       RGB3_Blue,
	                 output logic       RGB3_Green,
	                 output logic       RGB3_Red,
                   output             UART_TXD,
                   input              UART_RXD,
                   output [7:0]       jd
                  );
                  
   logic clk_5mhz;

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

   logic [7:0] jd_DN, jd_DP, jd_write_data;
   logic       jd_write;

   assign fetch_enable = 1'b1;
   assign jd[7:0] = jd_DP[7:0];
   
   
   clk_wiz_3 clk_div_i (.clk_in1 (clk_100mhz),
                                .clk_out1 (clk_5mhz),
                                .reset (~rst_ni));
   
   
   always_comb begin
      RGB0_Blue = tests_passed_SP;
      RGB1_Red  = tests_failed_SP;
      LED[0] = running_SP;
      LED[1] = instr_req;
      LED[2] = instr_gnt;
      LED[3] = clk_blink_SP;
      jd_DN = jd_DP;
      
      if (jd_write)
        jd_DN = jd_write_data;
      
   
   end
   
   assign UART_TXD = ser_tx;
   assign ser_rx = UART_RXD;

   cv32e40x_tb_wrapper
        #(
          .INSTR_RDATA_WIDTH (32),
          .RAM_ADDR_WIDTH    (13),
          .BOOT_ADDR         ('h80)
         )
    cv32e40x_tb_wrapper_i
        (
         .clk_i          ( clk_5mhz  ),
         .rst_ni         (  rst_ni      ),
         .fetch_enable_i ( fetch_enable ),
         .tests_passed_o ( tests_passed_i),
         .tests_failed_o ( tests_failed_i ),
         .exit_valid_o   ( exit_valid   ),
         .exit_value_o   ( exit_value   ),
         .ser_tx_o (ser_tx),
         .ser_rx_i (ser_rx),
         .instr_req_o (instr_req),
         .instr_gnt_o (instr_gnt),
         .jd_write_o (jd_write),
         .jd_write_data_o (jd_write_data)
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

   always_ff @(posedge clk_5mhz, negedge rst_ni) begin
      if (~rst_ni) begin
         tests_failed_SP <= 1'b0;
         tests_passed_SP <= 1'b0;
         running_SP <= 1'b0;
         cnt_SP <= 32'b0;
         clk_blink_SP <= 1'b0;
         cnt2_SP <= 1'b0;
         req_SP <= 1'b0;
         jd_DP <= 'b0;
      end else begin
         tests_failed_SP <= tests_failed_SN;
         tests_passed_SP <= tests_passed_SN;
         running_SP <= 1'b1;
         cnt_SP <= cnt_SN;
         cnt2_SP <= cnt2_SN;
         clk_blink_SP <= clk_blink_SN;
         req_SP <= req_SN;
         jd_DP <= jd_DN;
         
      end
   end
         

   endmodule
