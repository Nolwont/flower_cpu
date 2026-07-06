class tb_alu_test_base extends uvm_test;
    `uvm_component_utils(tb_alu_test_base)

    function new(string name = "tb_alu_test_base", uvm_component parent = null);
        super.new(name, parent);
    endfunction: new

    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        phase.raise_objection(this);
        $dumpfile("wave.vcd");
        $dumpvars(0);
        #5;
        `uvm_warning("Waited", "5 ns")
        phase.drop_objection(this);
    endtask: run_phase

endclass: tb_alu_test_base
