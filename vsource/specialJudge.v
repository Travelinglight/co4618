`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:34:39 04/14/2015 
// Design Name: 
// Module Name:    specialJudge 
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
module specialJudge(
		input [30:0]a,
		input [30:0]b,
		input [30:0]in,
		output [30:0]out
    );
	 reg [30:0]tmp;
	 always @* begin
		tmp = in;
		if (a == 31'b1111111_10000000_00000000_00000000 || b == 31'b1111111_10000000_00000000_00000000)
			tmp = 31'b1111111_10000000_00000000_00000000;
		if (a == 31'b0000000_00000000_00000000_00000000 || b == 31'b0000000_00000000_00000000_00000000)
			tmp = 31'b0000000_00000000_00000000_00000000;
		if (a == 31'b0000000_00000000_00000000_00000000 && b == 31'b1111111_10000000_00000000_00000000)
			tmp = 31'b1111111_11111111_11111111_11111111;
		if (a == 31'b1111111_10000000_00000000_00000000 && b == 31'b0000000_00000000_00000000_00000000)
			tmp = 31'b1111111_11111111_11111111_11111111;
	 end
	 assign out = tmp;
endmodule