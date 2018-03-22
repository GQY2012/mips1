`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:03 04/17/2017 
// Design Name: 
// Module Name:    PC 
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
module PC(
input clk,
input PCSrc,
input Jump,
input [31:0] PCBranch,
input [31:0] PCJump,
input [31:0] PCPlus4,
output reg [31:0] pc
    );

initial pc = 0;

always@(posedge clk)
begin 
  if(Jump)
  pc <= PCJump >> 2;
  else if(PCSrc)
  pc <= PCBranch ;
  else
   pc <= PCPlus4;
end 

endmodule
