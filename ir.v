module IR(	clk,
	reset,
	ir_in,
	ir_out
);
input reset, clk;
input [7:0] ir_in;
output reg [7:0] ir_out;

always @(posedge clk) 
		if (reset)
			ir_out <= 0;
		else
			ir_out <= ir_in;
endmodule