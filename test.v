`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:45:18 04/18/2017
// Design Name:   top
// Module Name:   E:/diligent Lab/mips/test.v
// Project Name:  mips
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg clk;
	reg clka;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.clka(clka), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clka = 0;
		reset = 0; 

		// Wait 100 ns for global reset to finish
		#100;
      reset = 1;  
		// Add stimulus here
  forever begin 
  #1 
	 clk = ~clk; 
  end
   
  
	end
      
endmodule

