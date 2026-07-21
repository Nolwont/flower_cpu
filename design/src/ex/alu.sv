module alu (
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    input design_pkg::OPCODE opcode,
    output wire [31:0] out
    );

    logic [31:0] result;

    always_comb begin
        case (opcode)
            design_pkg::ADDR: result <= in_a + in_b;
            default: result <= 0;
        endcase
    end

    assign out = result;

endmodule: alu
