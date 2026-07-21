module alu (
    input wire [31:0] in_a,
    input wire [31:0] in_b,
    input design_pkg::OPCODE opcode,
    output wire [31:0] out
    );

    logic [31:0] result;

    always_comb begin
        case (opcode)
            // AR-type
            design_pkg::ADDR: result <= in_a + in_b;
            design_pkg::SUBR: result <= in_a - in_b;
            design_pkg::ANDR: result <= in_a & in_b;
            design_pkg::ORR: result <= in_a | in_b;
            design_pkg::NOTR: result <= !in_a;
            // AI-type
            design_pkg::ADDI: result <= in_a + in_b;
            design_pkg::SUBI: result <= in_a - in_b;
            design_pkg::ANDI: result <= in_a & in_b;
            design_pkg::ORI: result <= in_a | in_b;

            default: result <= 0;
        endcase
    end

    assign out = result;

endmodule: alu
