module tb_alu;
    import uvm_pkg::*;
    import typedefs_pkg::*;

    logic [31:0] in_a = '0;
    logic [31:0] in_b = '0;
    OPCODE opcode = ADD;
    logic [31:0] out;

    alu dut_alu (.*);

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0);
        $display("out = %0d", out);
        #5;
        in_a = 1;
        #5;
        $display("out = %0d", out);
        $finish;
    end

endmodule: tb_alu
