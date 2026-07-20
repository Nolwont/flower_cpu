module alu (
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    input design_pkg::OPCODE opcode,
    output wire [31:0] out
    );

    assign out = opcode == ADDR?
            in_a + in_b :
            in_a - in_b;

endmodule: alu
