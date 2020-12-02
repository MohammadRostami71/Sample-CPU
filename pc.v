module PC(clk, c_inc, reset, c_jump,selected_address,pc_out);

input	clk;
input	reset;
input	c_inc;
output	reg [7:0]	pc_out;
input	[7:0]	selected_address;
input	c_jump;

always @(posedge clk)
	begin
		if (reset)
			pc_out <= 8'b0;
		else if (c_inc == 1)
			pc_out <= pc_out + 1;
		else if(c_jump == 1)
			pc_out <= selected_address;
	end
endmodule
