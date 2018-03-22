`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:51 04/17/2017 
// Design Name: 
// Module Name:    pcAddImm 
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
module pcAddImm(
input [31:0] pc,
input [15:0] signimm,
output  [31:0] PCBranch
    );

reg [31:0] imm = 0;

always@(*)
begin
  imm[15:0] = signimm;
  imm[31:16] = (signimm[15]? 16'hffff : 16'h0 );
end

assign PCBranch = pc + imm + 1  ;

endmodule
