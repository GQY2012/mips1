`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:25 04/17/2017 
// Design Name: 
// Module Name:    data_select 
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
module data_select(
input [31:0] RD2,
input ALUSrc,
input [15:0] signimm,
input Branch,
output reg [31:0] SrcB
    );


always@(*)
begin
 if(ALUSrc == 1'b0)
 SrcB = RD2 ;
  else  if(signimm[15] == 1 )
  begin
   SrcB[31:16] = 16'hffff;
	SrcB[15:0] = signimm;
	end
  else 
begin  
  SrcB[31:16] = 16'h0 ;
  SrcB[15:0] = signimm ;
  end
end

endmodule
