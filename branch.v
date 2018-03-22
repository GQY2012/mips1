`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:48:03 04/17/2017 
// Design Name: 
// Module Name:    branch 
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
module branch(
input Branch,
input Zero,
output  PCSrc
    );
	 
assign PCSrc = Branch & Zero;

endmodule
