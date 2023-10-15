module Mux4to1_TB;

  reg [3:0] a;
  reg [3:0] b;
  reg [3:0] c;
  reg [3:0] d;
  reg [1:0] sel;
  wire [3:0] y;

  // Instantiate the Mux4to1 module
  Mux4to1 DUT (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
  );

  // Generate test cases
  initial begin
    $monitor("a=%b, b=%b, c=%b, d=%b, sel=%b, y=%b", a, b, c, d, sel, y);

    // Test Case 1
    a = 4'b1100; // 12
    b = 4'b1010; // 10
    c = 4'b0011; // 3
    d = 4'b0110; // 6
    sel = 2'b00; // Select a
    #10;

    // Test Case 2
    sel = 2'b01; // Select b
    #10;

    // Test Case 3
    sel = 2'b10; // Select c
    #10;

    // Test Case 4
    sel = 2'b11; // Select d
    #10;

    // Test Case 5
    a = 4'b0000; // 0
    b = 4'b1111; // 15
    c = 4'b0101; // 5
    d = 4'b1101; // 13
    sel = 2'b00; // Select a
    #10;

    // Test Case 6
    sel = 2'b01; // Select b
    #10;

    // Test Case 7
    sel = 2'b10; // Select c
    #10;

    // Test Case 8
    sel = 2'b11; // Select d
    #10;

    // Test Case 9
    a = 4'b10101010; // 170
    b = 4'b11001100; // 204
    c = 4'b01010101; // 85
    d = 4'b11110000; // 240
    sel = 2'b00; // Select a
    #10;

    // Test Case 10
    sel = 2'b11; // Select d
    #10;

    $finish;
  end

endmodule
