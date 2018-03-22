`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:04:54 04/17/2017 
// Design Name: 
// Module Name:    top 
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
module top(
input clk,
input clka,
input reset
    );

wire [31:0]  SrcB  ,ALUResult , PCBranch , pc , instruction , Result , RD1 , RD2 , ReadData , PCPlus4 , PCJump ;
wire [4:0] ALUcontrol , WriteReg ;
wire PCSrc , RegWrite , ALUSrc , MemtoReg , RegDst , Branch , Zero , MemWrite , Jump ;

ALU u_ALU(
.alu_a    (RD1  ),
.alu_b    (SrcB ),
.alu_op   (ALUcontrol ),
.alu_out  (ALUResult ),
.Zero  (Zero )
);

PC u_PC(
.clk    (clk  ),
.PCSrc  (PCSrc  ),
.Jump    (Jump  ),
.PCJump   (PCJump  ),
.PCPlus4   (PCPlus4   ),
.PCBranch   (PCBranch  ),
.pc    (pc  )
);

REG_FILE u_REG_FILE(
.clk   (clk  ),
.rst_n  (reset  ),
.r1_addr   (instruction[25:21]  ),
.r2_addr   (instruction[20:16]  ),
.r3_addr   (WriteReg  ),
.r3_din     (Result  ),
.r3_wr    (RegWrite ),
.r1_dout   (RD1  ),
.r2_dout   (RD2  )
);

pcAddImm u_pcAddImm(
.pc  (pc  ),
.signimm  (instruction[15:0]  ),
.PCBranch  (PCBranch  )
);

data_select u_data_select(
.RD2   (RD2  ),
.ALUSrc  (ALUSrc  ),
.Branch  (Branch  ),
.signimm  (instruction[15:0]  ),
.SrcB  (SrcB  )
);

data_select2 u_data_select2(
.ALUResult  (ALUResult  ),
.ReadData   (ReadData  ),
.MemtoReg   (MemtoReg  ),
.Result      (Result )
);

address_select u_address_select(
.rt  (instruction[20:16]  ),
.rd  (instruction[15:11]  ),
.RegDst    (RegDst  ),
.WriteReg  (WriteReg )
);

pcPlus4 u_pcPlus4(
.pc   (pc   ),
.PCPlus4  (PCPlus4  )
);

pcJump u_pcJump(
.signimm1  (instruction[25:0]  ),
.signimm2   (PCPlus4[29:24]  ),
.PCJump     (PCJump   )
);

branch u_branch(
.Branch  (Branch  ),
.Zero   (Zero  ),
.PCSrc  (PCSrc  )
);

control u_control(
.op   (instruction[31:26]  ),
.Funct  (instruction[5:0]  ),
.ALUcontrol  (ALUcontrol  ),
.MemtoReg   (MemtoReg  ),
.MemWrite    (MemWrite  ),
.Branch     (Branch  ),
.ALUSrc     (ALUSrc  ),
.RegDst     (RegDst  ),
.RegWrite   (RegWrite ),
.Jump   (Jump   )
);

DataMemory u_DataMemory(
.clk  (clk  ),
.we   (MemWrite  ),
.a  (ALUResult[6:2]  ),
.d   (RD2  ),
.spo   (ReadData  )
);

instruction u_instruction(
.clk   (clk  ), 
.a   (pc  ),
.spo  (instruction ),
.we   (we ),
.d  (d )
);

endmodule
