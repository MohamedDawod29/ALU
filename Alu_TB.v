
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 08/29/2023 
// Design Name: 
// Module Name: ALu_TB
// Project Name: ALU
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALu_TB;
				parameter n = 8;
				reg[n-1:0] A,B;
				reg[2:0] OpCode;
				wire [n-1:0] Result;
				wire  Z_flag,C_flag,C_out;
				
				ALu Dut 
				(
				.A(A),
				.B(B),
				.OpCode(OpCode),
				.Result(Result),
				.Z_flag(Z_flag),
				.C_flag(C_flag),
				.C_out(C_out)
				);
				
				initial 
				begin
				
					A = 8'b01010110;
					B = 8'b01011101;
					
					#100
					OpCode = 0;
					#100
					OpCode = 1;
					#100
					OpCode = 2;
					#100
					OpCode = 3;
					#100
					OpCode = 4;
					#100
					OpCode = 5;
					#100
					OpCode = 6;
					#100
					OpCode = 7;
					#100
					OpCode = 3'bxxx;
					$stop;
					
				end
endmodule
