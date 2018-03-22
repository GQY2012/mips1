`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:59:09 04/17/2017 
// Design Name: 
// Module Name:    address_select 
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
module address_select(
input [4:0] rt,
input [4:0] rd,
input RegDst,
output  [4:0] WriteReg
    );

assign WriteReg = (RegDst == 1'b0 ? rt : rd);

endmodule
