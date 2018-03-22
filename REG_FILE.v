`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:06:15 03/20/2017 
// Design Name: 
// Module Name:    REG_FILE 
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
module REG_FILE(
input clk,
input rst_n,
input [4:0] r1_addr,
input [4:0] r2_addr,
input [4:0] r3_addr,
input [31:0] r3_din,
input		r3_wr,
output reg [31:0] r1_dout,
output reg [31:0] r2_dout
   );

reg [31:0] r1 = 0 , r2 = 0 , r3 = 0 , r4 = 0;
reg [31:0] r5 = 0 , r6 = 0 , r7 = 0 , r8 = 0;
reg [31:0] r9 = 0 , r10 = 0 , r11 = 0 , r12 = 0;
reg [31:0] r13 = 0 , r14= 0 , r15 = 0 , r16 = 0;
reg [31:0] r17 = 0 , r18 = 0 , r19 = 0 , r20 = 0;
reg [31:0] r21 = 0 , r22 = 0 , r23 = 0 , r24 = 0;
reg [31:0] r25 = 0 , r26 = 0 , r27 = 0 , r28 = 0;
reg [31:0] r29 = 0 , r30 = 0 , r31 = 0 , r32 = 0;

always@(posedge clk,negedge rst_n)
begin
  if(~rst_n)
  begin
  r1 <= 0;
  r2 <= 0;
  r3 <= 0;
  r4 <= 0;
  r5 <= 0;
  r6 <= 0;
  r7 <= 0;
  r8 <= 0;
  r9 <= 0;
  r10 <= 0;
  r11 <= 0;
  r12 <= 0;
  r13 <= 0;
  r14 <= 0;
  r15 <= 0;
  r16 <= 0;
  r17 <= 0;
  r18 <= 0;
  r19 <= 0;
  r20 <= 0;
  r21 <= 0;
  r22 <= 0;
  r23 <= 0;
  r24 <= 0;
  r25 <= 0;
  r26 <= 0;
  r27 <= 0;
  r28 <= 0;
  r29 <= 0;
  r30 <= 0;
  r31 <= 0;
  r32 <= 0;
  end
  else if(r3_wr)
    begin
     case(r3_addr)
	  5'd00:  r1 <= r3_din;
	  5'd01:  r2 <= r3_din;
     5'd02:  r3 <= r3_din;
	  5'd03:  r4 <= r3_din;
	  5'd04:  r5 <= r3_din;
	  5'd05:  r6 <= r3_din;
	  5'd06:  r7 <= r3_din;
	  5'd07:  r8 <= r3_din;
	  5'd08:  r9 <= r3_din;
	  5'd09:  r10 <= r3_din;
     5'd10:  r11 <= r3_din;
     5'd11:  r12 <= r3_din;
	  5'd12:  r13 <= r3_din;
	  5'd13:  r14 <= r3_din;
	  5'd14:  r15 <= r3_din;
	  5'd15:  r16 <= r3_din;
	  5'd16:  r17 <= r3_din;
	  5'd17:  r18 <= r3_din;
	  5'd18:  r19 <= r3_din;
	  5'd19:  r20 <= r3_din;
	  5'd20:  r21 <= r3_din;
	  5'd21:  r22 <= r3_din;
	  5'd22:  r23 <= r3_din;
	  5'd23:  r24 <= r3_din;
	  5'd24:  r25 <= r3_din;
	  5'd25:  r26 <= r3_din;
	  5'd26:  r27 <= r3_din;
	  5'd27:  r28 <= r3_din;
	  5'd28:  r29 <= r3_din;
	  5'd29:  r30 <= r3_din;
	  5'd30:  r31 <= r3_din;
	  5'd31:  r32 <= r3_din;
	  endcase
	 end
end

always@(*)
begin
  if(~rst_n)
  begin
    r1_dout = 1;
	 r2_dout = 1;
	end
  else 
  begin
    case(r1_addr)
	  5'd00:  r1_dout = r1 ;
	  5'd01:  r1_dout = r2 ;
     5'd02:  r1_dout = r3 ;
	  5'd03:  r1_dout = r4 ;
	  5'd04:  r1_dout = r5 ;
	  5'd05:  r1_dout = r6 ;
	  5'd06:  r1_dout = r7 ;
	  5'd07:  r1_dout = r8 ;
	  5'd08:  r1_dout = r9 ;
	  5'd09:  r1_dout = r10 ;
     5'd10:  r1_dout = r11 ;
     5'd11:  r1_dout = r12 ;
	  5'd12:  r1_dout = r13 ;
	  5'd13:  r1_dout = r14 ;
	  5'd14:  r1_dout = r15 ;
	  5'd15:  r1_dout = r16 ;
	  5'd16:  r1_dout = r17 ;
	  5'd17:  r1_dout = r18 ;
	  5'd18:  r1_dout = r19 ;
	  5'd19:  r1_dout = r20 ;
	  5'd20:  r1_dout = r21 ;
	  5'd21:  r1_dout = r22 ;
	  5'd22:  r1_dout = r23 ;
	  5'd23:  r1_dout = r24 ;
	  5'd24:  r1_dout = r25 ;
	  5'd25:  r1_dout = r26 ;
	  5'd26:  r1_dout = r27 ;
	  5'd27:  r1_dout = r28 ;
	  5'd28:  r1_dout = r29 ;
	  5'd29:  r1_dout = r30 ;
	  5'd30:  r1_dout = r31 ;
	  5'd31:  r1_dout = r32 ;
	  endcase
	  case(r2_addr)
	  5'd00:  r2_dout = r1 ;
	  5'd01:  r2_dout = r2 ;
     5'd02:  r2_dout = r3 ;
	  5'd03:  r2_dout = r4 ;
	  5'd04:  r2_dout = r5 ;
	  5'd05:  r2_dout = r6 ;
	  5'd06:  r2_dout = r7 ;
	  5'd07:  r2_dout = r8 ;
	  5'd08:  r2_dout = r9 ;
	  5'd09:  r2_dout = r10 ;
     5'd10:  r2_dout = r11 ;
     5'd11:  r2_dout = r12 ;
	  5'd12:  r2_dout = r13 ;
	  5'd13:  r2_dout = r14 ;
	  5'd14:  r2_dout = r15 ;
	  5'd15:  r2_dout = r16 ;
	  5'd16:  r2_dout = r17 ;
	  5'd17:  r2_dout = r18 ;
	  5'd18:  r2_dout = r19 ;
	  5'd19:  r2_dout = r20 ;
	  5'd20:  r2_dout = r21 ;
	  5'd21:  r2_dout = r22 ;
	  5'd22:  r2_dout = r23 ;
	  5'd23:  r2_dout = r24 ;
	  5'd24:  r2_dout = r25 ;
	  5'd25:  r2_dout = r26 ;
	  5'd26:  r2_dout = r27 ;
	  5'd27:  r2_dout = r28 ;
	  5'd28:  r2_dout = r29 ;
	  5'd29:  r2_dout = r30 ;
	  5'd30:  r2_dout = r31 ;
	  5'd31:  r2_dout = r32 ;
	  endcase
	  end
end

endmodule
