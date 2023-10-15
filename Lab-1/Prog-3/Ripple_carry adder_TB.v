module RippleCarryAdder_TB;

  reg [3:0] A;         // 4-bit input A
  reg [3:0] B;         // 4-bit input B
  wire [3:0] Sum;      // 4-bit output Sum
  wire Cout;           // Carry output

  // Instantiate the RippleCarryAdder module
  RippleCarryAdder DUT (.A(A), .B(B), .Sum(Sum), .Cout(Cout));

  // Monitor the signals
  initial begin
    $monitor("A = %b, B = %b, Sum = %b, Cout = %b", A, B, Sum, Cout);
    #10; // Wait for a while to let the outputs settle

    // Custom test cases
    A = 4'b1100;  // A = 12 (1100 in binary)
    B = 4'b1010;  // B = 10 (1010 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b0011;  // A = 3 (0011 in binary)
    B = 4'b0110;  // B = 6 (0110 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1111;  // A = 15 (1111 in binary)
    B = 4'b0000;  // B = 0 (0000 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1000;  // A = 8 (1000 in binary)
    B = 4'b1000;  // B = 8 (1000 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b0101;  // A = 5 (0101 in binary)
    B = 4'b0010;  // B = 2 (0010 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1101;  // A = 13 (1101 in binary)
    B = 4'b1011;  // B = 11 (1011 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1010;  // A = 10 (1010 in binary)
    B = 4'b0101;  // B = 5 (0101 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1110;  // A = 14 (1110 in binary)
    B = 4'b0001;  // B = 1 (0001 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b1001;  // A = 9 (1001 in binary)
    B = 4'b0111;  // B = 7 (0111 in binary)
    #10; // Wait for a while to let the outputs settle

    A = 4'b0010;  // A = 2 (0010 in binary)
    B = 4'b0010;  // B = 2 (0010 in binary)
    #10; // Wait for a while to let the outputs settle

    $finish; // Finish the simulation
  end

endmodule
