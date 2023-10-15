module BidirectionalBuffer_TB;

  reg enable;       // Buffer enable signal
  wire [7:0] data;  // Bidirectional data bus

  // Instantiate the BidirectionalBuffer module
  BidirectionalBuffer DUT (
    .enable(enable),
    .data(data)
  );

  // Generate test cases
  initial begin
    $monitor("enable = %b, data = %b", enable, data);

    // Test Case 1: Enable buffer (data flows through)
    enable = 1;
    data = 8'b11001100;
    #10;

    // Test Case 2: Disable buffer (tri-state, data is 'z')
    enable = 0;
    #10;

    // Test Case 3: Enable buffer (data flows through)
    enable = 1;
    data = 8'b00110011;
    #10;

    $finish;
  end

endmodule
