module Memory(clk,store,address,in_data,out_data, reset);
input clk;
input store;
input [5:0]address;
input [7:0]in_data;
input reset;
output reg [7:0] out_data; 

reg [7:0] memory[0:63];

initial
	begin
		$readmemb("initial_memory.txt",memory);
		//$readmemb("initial_memory_2.txt",memory); Bonus 
	end
reg [5:0]index;
initial begin index = 63; end

always@(posedge clk)
	 begin
		if ( reset )
			out_data <= 0;
		else begin
			out_data = memory[address];
			if (store == 1) 
				begin
					memory[index] = in_data ;
					index = index - 1;
				end
			end
		end 
			 
endmodule