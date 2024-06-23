
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Mohamed Mabrouk Dawod
// 
// Create Date: 08/29/2023 
// Design Name: 
// Module Name: ALu
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

module ALu 
			#(parameter n = 8)
			(
			input[n-1:0] A,B,
			input[2:0] OpCode,
			output reg[n-1:0] Result,
			output reg Z_flag,C_flag,C_out
			);
			
			reg [n:0] result;
			
			always @ (*)
			begin
				casez(OpCode)
					3'b000:
						begin
							 result = A + B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end	
					3'b001:
						begin
							 result = A - B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					3'b010:
						begin
							 result = A & B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end					
					3'b011:
						begin
							 result = A | B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					3'b100:
						begin
							 result = A ^ B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					3'b101:
						begin
							 result = A > B;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					3'b110:
						begin
							 result = A << 1;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					3'b111:	
						begin
							 result = B << 1;
							 Result = result [n-1:0];
							 C_out = result[n];
							 C_flag = (A > B)?1'b1:1'b0;
							 Z_flag = (Result == 0)?1'b1:1'b0;
						end
					default:
					begin
						 Result = A;
						 C_out = 1'b0;
						 C_flag = (A > B)?1'b1:1'b0;
						 Z_flag = (Result == 0)?1'b1:1'b0;
					end
				endcase
			end
endmodule

