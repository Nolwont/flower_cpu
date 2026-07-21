module tb_ex_assertions(
    input wire [31:0] inst_ex_in,
    input wire [31:0] rs1_ex_in,
    input wire [31:0] rs2_ex_in,
    input wire [31:0] inst_ex_out,
    input wire [31:0] rs1_pass_ex_out,
    input wire [31:0] rs2_pass_ex_out,
    input wire [31:0] res_ex_out
    );

    asrt_pass_rs1: assert property (rs1_ex_in == rs1_pass_ex_out);
    asrt_pass_rs2: assert property (rs2_ex_in == rs2_pass_ex_out);

    asrt_inst: assert property (inst_ex_in == inst_ex_out);

    //asrt_nop: assert property(inst_ex_in[7:0] == )

endmodule: tb_ex_assertions
