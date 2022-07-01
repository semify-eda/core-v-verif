// Copyright 2015 ETH Zurich and University of Bologna.
// Copyright 2017 Embecosm Limited <www.embecosm.com>
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

module dp_ram
    #(parameter ADDR_WIDTH = 8,
      parameter INSTR_RDATA_WIDTH = 32)
    (input logic                  clk_i,

     input logic                          en_a_i,
     input logic [ADDR_WIDTH-1:0]         addr_a_i,
     input logic [31:0]                   wdata_a_i,
     output logic [INSTR_RDATA_WIDTH-1:0] rdata_a_o,
     input logic                          we_a_i,
     input logic [3:0]                    be_a_i,

     input logic                          en_b_i,
     input logic [ADDR_WIDTH-1:0]         addr_b_i,
     input logic [31:0]                   wdata_b_i,
     output logic [31:0]                  rdata_b_o,
     input logic                          we_b_i,
     input logic [3:0]                    be_b_i);

    localparam words = 2**ADDR_WIDTH;

   logic [31:0] mem[words];
   logic [ADDR_WIDTH-1:0]           addr_a_int;
   logic [ADDR_WIDTH-1:0]           mem_a_addr, mem_b_addr, addr_b_1, addr_b_2, addr_b_3;
   //assign addr_a_int = {addr_a_i[ADDR_WIDTH-1:2], 2'b0};

   always_comb mem_a_addr = addr_a_i >> 2;
   always_comb mem_b_addr = addr_b_i >> 2;
 
    always @(posedge clk_i) begin
       //rdata_a_o <= mem[addr_a_i];
       //for (int i = 0; i < INSTR_RDATA_WIDTH/8; i++) begin
          //rdata_a_o[(i*8)+: 8] <= mem[addr_a_i + i];
        //end
       rdata_a_o <= mem[mem_a_addr];
       rdata_b_o <= mem[mem_b_addr];
      
        /* addr_b_i is the actual memory address referenced */
        if (en_b_i) begin
            /* handle writes */
            if (we_b_i) begin  
               if (be_b_i[0]) mem[mem_b_addr] [0+:8]  <= wdata_b_i[ 0+:8];
               if (be_b_i[1]) mem[mem_a_addr] [8+:8] <= wdata_b_i[ 8+:8];
               if (be_b_i[2]) mem[mem_b_addr] [16+:8] <=  wdata_b_i[16+:8];
               if (be_b_i[3]) mem[mem_b_addr] [24+:8] <= wdata_b_i[24+:8];
            end

        end
    end


endmodule // dp_ram
