module Adder(in1,in2,out);
input [7:0] in1;
input [7:0] in2;
output reg [7:0] out;
always@(*)
	begin
	out <= in1 + in2 ;
	end
	
endmodule