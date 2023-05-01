`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:32 04/24/2023 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:32 04/24/2023 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module addsub (a,b,cin,sum,cout,add_sub);
input [7:0] a;
input [7:0] b;
input cin;
input add_sub; // 0 for add, 1 for subtract
output [7:0] sum;
output cout;

wire [7:0] b_compl; // complement of b
wire [8:0] s; // intermediate sum

assign b_compl = b ^ {8{add_sub}}; // XOR b with add_sub
assign s = a + b_compl + cin; // add a, b_compl and cin
assign sum = s[7:0]; // assign lower 8 bits to sum
assign cout = s[8]; // assign MSB to cout

endmodule
