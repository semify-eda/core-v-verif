module sp_byteram
    #(parameter ADDR_WIDTH = 10,
      parameter INSTR_RDATA_WIDTH = 128)
    (input logic                  clk_i,

     input logic                          en_i,
     input logic [ADDR_WIDTH-1:0]         addr_i,
     input logic [31:0]                   wdata_i,
     output logic [31:0]                  rdata_o,
     input logic                          we_i,
     input logic [3:0]                    be_i);

    localparam bytes = (2**ADDR_WIDTH)*4;

    logic [7:0]                      mem[bytes];
    logic [ADDR_WIDTH-1:0]           addr_int;

   initial begin
      $readmemh("/home/mario/sim_core/hello-world/hello-world.hex", mem);
   end
    always_comb addr_int = {addr_i[ADDR_WIDTH-1:2], 2'b0};

    always @(posedge clk_i) begin
        for (int i = 0; i < INSTR_RDATA_WIDTH/8; i++) begin
            rdata_o[(i*8)+: 8] <= mem[addr_int +  i];
        end
    
    /*
        if (en_i) begin
             
                if (we_i) begin
                    if (be_i[0]) mem[addr_int    ] <= wdata_i[ 0+:8];
                    if (be_i[1]) mem[addr_int + 1] <= wdata_i[ 8+:8];
                    if (be_i[2]) mem[addr_int + 2] <= wdata_i[16+:8];
                    if (be_i[3]) mem[addr_int + 3] <= wdata_i[24+:8];
                end
        end  
     */
    end    
    

endmodule // dp_ram
