module alu (
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    input OPCODE opcode,
    output wire [31:0] out
    );

    import design_pkg::*;

    assign out = opcode == ADD ?
            in_a + in_b :
            in_a - in_b;

endmodule: alu
