`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:14 04/18/2017 
// Design Name: 
// Module Name:    pcPlus4 
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
module pcPlus4(
input [31:0] pc,
output  [31:0] PCPlus4
    );

assign PCPlus4 = pc + 1 ;

endmodule
