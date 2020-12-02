module Controller (
    opcode,
    func,
    jump,
    store,
    inc,
    load,
    reg_write,
	ADD
);
    input [3:0] opcode;
    output [1:0] func;
    output jump;
    output store;
    output inc;
    output load;
    output reg_write;
	input ADD;
	
    assign func = opcode[1:0];
    assign load = opcode [2];
    assign store = opcode[1] & (~opcode[0]);
    assign jump = opcode[3];
    assign reg_write = opcode[3] | (~(opcode[3])& (~opcode[1]) );
    assign inc = ~opcode[3];
endmodule
