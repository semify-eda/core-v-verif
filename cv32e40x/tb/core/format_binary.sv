module format_binary ();

   parameter words = 2**16;
   logic [31:0] mem32[words];
   logic [7:0] mem8[words*4];
   
   initial begin
      $readmemh("/home/mario/sim_core/hello-world/hello-world.hex", mem8);
      #10
       $writememh("/home/mario/sim_core/hello-world/hello-world32.hex", mem32);
      #10
        $finish;
      
   end

   always_comb begin
      
      for (int i = 0; i < words; i += 1) begin
         mem32[i][0+:8] = mem8[4*i];
         mem32[i][8+:8] = mem8[4*i+1];
         mem32[i][16+:8] = mem8[4*i+2];
         mem32[i][24+:8] = mem8[4*i+3];
      end
   end       

endmodule
