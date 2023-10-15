module Mux4to1_using_Tristate_TB;

  reg [1:0] sel;      // 2-bit select input
  reg [3:0] a;        // Data input A
  reg [3:0] b;        // Data input B
  reg [3:0] c;        // Data input C
  reg [3:0] d;        // Data input D
  wire [3:0] y;       // Output of the multiplexer

  // Instantiate the Mux4to1_using_Tristate module
  Mux4to1_using_Tristate DUT (
    .sel(sel),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .y(y)
  );

  // Generate test cases
  initial begin
    $monitor("sel = %b, a = %b, b = %b, c = %b, d = %b, y = %b", sel, a, b, c, d, y);

    // Test Case 1: Select input 00 (a)
    sel = 2'b00;
    a = 4'b1100; // 12
    b = 4'b1010; // 10
    c = 4'b0011; // 3
    d = 4'b0110; // 6
    #10;

    // Test Case 2: Select input 01 (b)
    sel = 2'b01;
    #10;

    // Test Case 3: Select input 10 (c)
    sel = 2'b10;
    #10;

    // Test Case 4: Select input 11 (d)
    sel = 2'b11;
    #10;

    // Test Case 5: Select input 00 (a)
    sel = 2'b00;
    a = 4'b0010; // 2
    b = 4'b1000; // 8
    c = 4'b0100; // 4
    d = 4'b0110; // 6
    #10;

    // Test Case 6: Select input 01 (b)
    sel = 2'b01;
    #10;

    // Test Case 7: Select input 10 (c)
    sel = 2'b10;
    #10;

    // Test Case 8: Select input 11 (d)
    sel = 2'b11;
    #10;

    // Test Case 9: Select input 00 (a)
    sel = 2'b00;
    a = 4'b1111; // 15
    b = 4'b1110; // 14
    c = 4'b1100; // 12
    d = 4'b0001; // 1
    #10;

    // Test Case 10: Select input 01 (b)
    sel = 2'b01;
    #10;

    $finish;
  end

endmodule
