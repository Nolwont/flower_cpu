module tb_alu;
    import uvm_pkg::*;
    import design_pkg::*;

    logic [31:0] in_a = '0;
    logic [31:0] in_b = '0;
    OPCODE opcode = ADD;
    logic [31:0] out;

    alu dut_alu (.*);

    initial run_test("tb_alu_test_base");

endmodule: tb_alu
