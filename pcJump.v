`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:29 04/18/2017 
// Design Name: 
// Module Name:    pcJump 
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
module pcJump(
input [25:0] signimm1,
input [5:0] signimm2,
output [31:0] PCJump
    );

assign PCJump[31:26] = signimm2;

assign PCJump[25:0] = signimm1 << 2;

endmodule
