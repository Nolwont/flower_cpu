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
    logic [31:0] immediate = inst_ex_in[23:8];

    asrt_pass_rs1: assert property (rs1_ex_in == rs1_pass_ex_out);
    asrt_pass_rs2: assert property (rs2_ex_in == rs2_pass_ex_out);

    asrt_inst: assert property (inst_ex_in == inst_ex_out);

    always_comb begin
        case (opcode)
            // AR-type
            design_pkg::ADDR: asrt_addr: assert (rs1_ex_in + rs2_ex_in == res_ex_out);
            design_pkg::SUBR: asrt_subr: assert (rs1_ex_in - rs2_ex_in == res_ex_out);
            design_pkg::ANDR: asrt_andr: assert (rs1_ex_in & rs2_ex_in == res_ex_out);
            design_pkg::ORR: asrt_orr: assert (rs1_ex_in | rs2_ex_in == res_ex_out);
            design_pkg::NOTR: asrt_notr: assert (!rs1_ex_in == res_ex_out);

            // AI-type
            design_pkg::ADDI: asrt_addi: assert (rs1_ex_in + immediate == res_ex_out);
            design_pkg::SUBI: asrt_subi: assert (rs1_ex_in - immediate == res_ex_out);
            design_pkg::ANDI: asrt_andi: assert (rs1_ex_in & immediate == res_ex_out);
            design_pkg::ORI: asrt_ori: assert (rs1_ex_in | immediate == res_ex_out);

            //TODO Add asserts for other instruction types? Might be unnececarry since the pass assertions are alreday here

        endcase
    end

endmodule: tb_ex_assertions
