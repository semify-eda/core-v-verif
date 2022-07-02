module sp_4byteram
    #(parameter ADDR_WIDTH = 8,
      parameter INSTR_RDATA_WIDTH = 32)
    (input logic                  clk_i,

     input logic                          en_i,
     input logic [ADDR_WIDTH-1:0]         addr_i,
     input logic [31:0]                   wdata_i,
     output logic [INSTR_RDATA_WIDTH-1:0] rdata_o,
     input logic                          we_i,
     input logic [3:0]                    be_i
     );

    localparam words = 2**ADDR_WIDTH;

   logic [31:0] mem[words];
   logic [ADDR_WIDTH-1:0]           mem_addr;
   
   //assign addr_a_int = {addr_a_i[ADDR_WIDTH-1:2], 2'b0};

   always_comb mem_addr = addr_i >> 2;
 
    always @(posedge clk_i) begin
       //rdata_a_o <= mem[addr_a_i];
       //for (int i = 0; i < INSTR_RDATA_WIDTH/8; i++) begin
          //rdata_a_o[(i*8)+: 8] <= mem[addr_a_i + i];
        //end
       rdata_o <= mem[mem_addr];
      
        /* addr_b_i is the actual memory address referenced */
        if (en_i) begin
            /* handle writes */
            if (we_i) begin  
               if (be_i[0]) mem[mem_addr] [0+:8]  <= wdata_i[ 0+:8];
               if (be_i[1]) mem[mem_addr] [8+:8] <= wdata_i[ 8+:8];
               if (be_i[2]) mem[mem_addr] [16+:8] <=  wdata_i[16+:8];
               if (be_i[3]) mem[mem_addr] [24+:8] <= wdata_i[24+:8];
            end

        end
    end


endmodule // dp_ram
