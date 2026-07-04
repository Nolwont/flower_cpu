module alu (
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    input typedefs_pkg::OPCODE opcode,
    output wire out
    );

    assign out = opcode == ADD ?
            in_a + in_b :
            in_a - in_b;

endmodule: alu
