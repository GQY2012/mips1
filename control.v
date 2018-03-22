`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:09:13 04/17/2017 
// Design Name: 
// Module Name:    control 
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
module control(
input [5:0] op,
input [5:0] Funct,
output reg [4:0] ALUcontrol,
output reg MemtoReg,
output reg MemWrite,
output reg Branch,
output reg ALUSrc,
output reg RegDst,
output reg RegWrite,
output reg Jump
    );

initial begin
 ALUcontrol = 0;
 MemtoReg = 1;
 MemWrite = 0;
 Branch = 0;
 ALUSrc = 0;
 RegDst = 0;
 RegWrite = 0;
 Jump = 0;
end

always@(*)
begin
 case(op)
  6'b000000:  //add
  begin
    ALUcontrol = 5'h01;
    MemtoReg = 0;
    MemWrite = 0;
    Branch = 0;
    ALUSrc = 0;
    RegDst = 1;
    RegWrite = 1;
	 Jump = 0;
  end
  6'b100011:  //lw
   begin
    ALUcontrol = 5'h01;
    MemtoReg = 1;
    MemWrite = 0;
    Branch = 0;
    ALUSrc = 1;
    RegDst = 0;
    RegWrite = 1;
	 Jump = 0;
   end
  6'b101011:  //sw
  begin
    ALUcontrol = 5'h01;
    MemtoReg = 1;
    MemWrite = 1;
    Branch = 0;
    ALUSrc = 1;
    RegDst = 0;
    RegWrite = 0;
	 Jump = 0;
  end
  6'b000010:   //j
  begin
    ALUcontrol = 5'h01;
    MemtoReg = 0;
    MemWrite = 0;
    Branch = 0;
    ALUSrc = 0;
    RegDst = 0;
    RegWrite = 0;
	 Jump = 1;
  end 
  6'b001000:  //addi
  begin
    ALUcontrol = 5'h01;
    MemtoReg = 0;
    MemWrite = 0;
    Branch = 0;
    ALUSrc = 1;
    RegDst = 0;
    RegWrite = 1;
    Jump = 0;	 
  end
  6'b000111:  //bgtz
  begin
    ALUcontrol = 5'h0;
    MemtoReg = 0;
    MemWrite = 0;
    Branch = 1;
    ALUSrc = 1;
    RegDst = 0;
    RegWrite = 0;
    Jump = 0;	 
  end
  endcase
end




endmodule
