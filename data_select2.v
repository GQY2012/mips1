`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:16 04/17/2017 
// Design Name: 
// Module Name:    data_select2 
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
module data_select2(
input [31:0] ALUResult,
input [31:0] ReadData,
input MemtoReg,
output  [31:0] Result
    );

assign Result = (MemtoReg == 1'b0 ? ALUResult : ReadData);

endmodule
