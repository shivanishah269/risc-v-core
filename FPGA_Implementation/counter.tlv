\m4_TLV_version 1d --bestsv --noline: tl-x.org
\SV
    m4_include_lib(['https://gist.githubusercontent.com/shivanishah269/a34f039ba93334a2450ee6b191d6757f/raw/48a176d1b60a0975367676b19242fd5849e27bbd/gistfile1.txt'])
   
   m4_makerchip_module   // Compile within Makerchip to see expanded module definition.
      logic [7:0] out;          // Connect to LEDs.      
      
      counter dut (clk, reset, out);

      // Pass if core gives correct answer to test case.
      assign passed = cyc_cnt > 100 ? 1'b1 : 1'b0;
      assign failed = 1'b0;
   endmodule
   module counter (input logic clk, input logic reset, output logic [7:0] out);
\TLV
   $reset = *reset;
   $delay[25:0] = ($reset || >>1$delay == 33554432) ? 0 : >>1$delay + 1;
   $num[7:0] = $reset ? 0 : ($delay == 33554432 ? >>1$num + 1 : >>1$num);
   \SV_plus
      assign out = $num;
\SV     
   endmodule
