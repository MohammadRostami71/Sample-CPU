module ALU(
func,
in1,
in2,
reset,
alu_out
);
input [1:0] func;
input [7:0] in1;
input [7:0] in2;
input reset;
output reg [7:0] alu_out;

always @(func)
	begin
	if ( reset )
		alu_out <= 0 ;
	else begin
      if(func == 2'b00) begin
	  alu_out <= in1 + in2;
	  end
      if(func == 2'b01) begin 
	  alu_out <= in1 - in2;
	  end
      if(func == 2'b10) begin
	  alu_out <= in1;
	  end
	  if(func ==2'b11) begin
	  alu_out <= 0;
	  end
	end
  end
endmodule