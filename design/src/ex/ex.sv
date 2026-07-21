module ex (
    input wire [31:0] inst_ex_in,
    input wire [31:0] rs1_ex_in,
    input wire [31:0] rs2_ex_in,
    output wire [31:0] inst_ex_out,
    output wire [31:0] rs1_pass_ex_out,
    output wire [31:0] rs2_pass_ex_out,
    output wire [31:0] res_ex_out
    );

    wire [31:0] in_a;
    wire [31:0] in_b;
    wire [31:0] out;
    logic [31:0] immediate;
    design_pkg::OPCODE opcode;

    // Pass
    assign rs1_pass_ex_out = rs1_ex_in;
    assign rs2_pass_ex_out = rs2_ex_in;
    assign inst_ex_out = inst_ex_in;

    assign opcode = inst_ex_in[7:0];
    assign immediate = inst_ex_in[23:8];

    assign in_a = rs1_ex_in;
    assign in_b = design_pkg::get_opcode_type(opcode) == design_pkg::AR ? rs2_ex_in : immediate;
    assign res_ex_out = out;

    alu u_alu(.*);

endmodule: ex