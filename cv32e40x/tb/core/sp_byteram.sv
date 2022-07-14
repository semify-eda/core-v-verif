module sp_byteram
    #(parameter ADDR_WIDTH = 12,
      parameter INSTR_RDATA_WIDTH = 32)
    (input logic                  clk_i,

     input logic                          en_i,
     input logic [ADDR_WIDTH-1:0]         addr_i,
     input logic [31:0]                   wdata_i,
     output logic [31:0]                  rdata_o,
     input logic                          we_i,
     input logic [3:0]                    be_i);

    localparam bytes = (2**ADDR_WIDTH);

    logic [31:0]                      mem[bytes];
    (* dont_touch = "true" *) logic [ADDR_WIDTH-1:0]           mem_addr;
    (* dont_touch = "true" *) logic [31:0] rinstr; 

   initial begin
      $readmemh("/home/mario/sim_core/hello-world/hello-world32.hex", mem );
   end
   // always_comb addr_int = {addr_i[ADDR_WIDTH-1:2], 2'b0};
   always_comb mem_addr = addr_i >> 2;
   always_comb rinstr = mem[mem_addr];  

    always @(posedge clk_i) begin

       rdata_o <= mem[mem_addr];
       
       if (en_i) begin
          if (we_i) begin  
             if (be_i[0]) mem[mem_addr] [0+:8]  <= wdata_i[ 0+:8];
             if (be_i[1]) mem[mem_addr] [8+:8] <= wdata_i[ 8+:8];
             if (be_i[2]) mem[mem_addr] [16+:8] <=  wdata_i[16+:8];
             if (be_i[3]) mem[mem_addr] [24+:8] <= wdata_i[24+:8];
          end

       end
    end

endmodule // dp_ram
