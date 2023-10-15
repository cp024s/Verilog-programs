module Decoder2x4(
  input wire [1:0] select,
  output wire [3:0] enable
);
  assign enable = (select == 2'b00) ? 4'b0001 :
                 (select == 2'b01) ? 4'b0010 :
                 (select == 2'b10) ? 4'b0100 :
                 (select == 2'b11) ? 4'b1000 : 4'b0000;
endmodule

module Mux4to1_using_Decoder(
  input wire [1:0] sel,
  input wire [3:0] a,
  input wire [3:0] b,
  input wire [3:0] c,
  input wire [3:0] d,
  output wire [3:0] y
);
  wire [3:0] decoder_output;

  // Instantiate the 2-to-4 decoder
  Decoder2x4 decoder (.select(sel), .enable(decoder_output));

  // Implement the 4:1 multiplexer using the decoder output
  assign y = (decoder_output[0]) ? a :
            (decoder_output[1]) ? b :
            (decoder_output[2]) ? c :
            (decoder_output[3]) ? d : 4'bzzzz; // Handle undefined case
endmodule
