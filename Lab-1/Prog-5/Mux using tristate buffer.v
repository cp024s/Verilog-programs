module Mux4to1_using_Tristate(
  input wire [1:0] sel,
  input wire [3:0] a,
  input wire [3:0] b,
  input wire [3:0] c,
  input wire [3:0] d,
  output wire [3:0] y
);
  wire [3:0] enabled_data;

  // Tristate buffers
  assign enabled_data = (sel == 2'b00) ? a :
                      (sel == 2'b01) ? b :
                      (sel == 2'b10) ? c :
                      (sel == 2'b11) ? d : 4'bzzzz; // Handle undefined case

  assign y = enabled_data;
endmodule
