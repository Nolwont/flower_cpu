module tb_ex_assertions(
    input wire [31:0] inst_ex_in,
    input wire [31:0] rs1_ex_in,
    input wire [31:0] rs2_ex_in,
    input wire [31:0] inst_ex_out,
    input wire [31:0] rs1_pass_ex_out,
    input wire [31:0] rs2_pass_ex_out,
    input wire [31:0] res_ex_out
    );

    design_pkg::OPCODE opcode = inst_ex_in[7:0];

    asrt_pass_rs1: assert property (rs1_ex_in == rs1_pass_ex_out);
    asrt_pass_rs2: assert property (rs2_ex_in == rs2_pass_ex_out);

    asrt_inst: assert property (inst_ex_in == inst_ex_out);

    always_comb begin
        case (opcode)
            design_pkg::ADDR: asrt_addr: assert (rs1_ex_in + rs2_ex_in == res_ex_out);
            design_pkg::SUBR: asrt_subr: assert (rs1_ex_in - rs2_ex_in == res_ex_out);
            design_pkg::ANDR: asrt_andr: assert (rs1_ex_in & rs2_ex_in == res_ex_out);
            design_pkg::ORR: asrt_orr: assert (rs1_ex_in | rs2_ex_in == res_ex_out);
            design_pkg::NOTR: asrt_notr: assert (!rs1_ex_in == res_ex_out);
        endcase
    end

endmodule: tb_ex_assertions
