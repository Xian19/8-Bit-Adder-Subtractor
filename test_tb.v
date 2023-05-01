`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:40 04/24/2023
// Design Name:   addsub
// Module Name:   C:/Users/silva/Desktop/Adder_Subtractor/eightbit/test_tb.v
// Project Name:  eightbit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addsub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:44:40 04/24/2023
// Design Name:   addsub
// Module Name:   C:/Users/silva/Desktop/Adder_Subtractor/eightbit/test_tb.v
// Project Name:  eightbit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: addsub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module addsub_test;

// Inputs
reg [7:0] a;
reg [7:0] b;
reg cin;
reg add_sub;

// Outputs
wire [7:0] sum;
wire cout;

// Instantiate the Unit Under Test (UUT)
addsub uut (
    .a(a), 
    .b(b), 
    .cin(cin), 
    .sum(sum), 
    .cout(cout), 
    .add_sub(add_sub)
);

initial begin
    // Initialize Inputs
    a = 8'b00000000;
    b = 8'b00000000;
    cin = 0;
    add_sub = 0;

    // Wait 100 ns for global reset to finish
    #100;

    // Add two numbers
    a = 8'b11111111;
    b = 8'b00000001;
	 cin = 1'b0;
	 add_sub = 1'b0;
    #50; // Wait for output to settle


end
      
endmodule