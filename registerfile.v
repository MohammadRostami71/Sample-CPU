module RegisterFile(clk,reset,reg_write,in_write,R1_out,R2_out,R1,R2);
input [1:0] R1;
input [1:0] R2;
input clk;
input reset;
input reg_write;
input [7:0]in_write;
output [7:0] R1_out;
output [7:0] R2_out;

reg [7:0] register [0:3];

assign R1_out = register[R1];
assign R2_out = register[R2];

always@(posedge clk)begin
	if (reset == 1) begin
		register[0] <= 0;
		register[1] <= 0;
		register[2] <= 0;
		register[3] <= 0;
	end
	if(reg_write ==1)
	begin
		register[R1] <= in_write;
	end
		
end
endmodule

