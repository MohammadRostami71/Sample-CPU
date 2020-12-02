module Mux2(
in1,
in2,
sel,
out
);
input [7:0] in1;
input [7:0] in2;
input sel;
output reg [7:0] out;
always@ (*) 
	begin
		if(sel == 1)
			out <= in1; 
		else
			out <= in2;
	end
endmodule
