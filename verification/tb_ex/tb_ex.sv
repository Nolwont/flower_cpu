
module tb_ex();

    wire [31:0] inst_ex_in;
    wire [31:0] rs1_ex_in;
    wire [31:0] rs2_ex_in;
    wire [31:0] inst_ex_out;
    wire [31:0] rs1_pass_ex_out;
    wire [31:0] rs2_pass_ex_out;
    wire [31:0] res_ex_out;

    ex u_ex(.*);

endmodule: tb_ex