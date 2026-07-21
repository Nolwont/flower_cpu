package design_pkg;

    typedef enum logic[7:0] {
        NOP = 0,
        ADDR = 1,
        SUBR = 2,
        ANDR = 3,
        ORR = 4,
        NOTR = 5,
        ADDI = 6,
        SUBI = 7,
        ANDI = 8,
        ORI = 9,
        STORE = 10,
        LOAD = 11,
        JUMP = 12,
        JUMPEQ = 13
        } OPCODE;

    typedef enum logic[2:0] {
        AR = 0,
        AI = 1,
        S = 2,
        L = 3,
        J = 4,
        N = 5
    } opcode_type;

    // Unfortunately cannot use enum names because it is unsupported in SBY
    function opcode_type get_opcode_type(OPCODE opcode);
        case (opcode)
            0: get_opcode_type = 0;
            1: get_opcode_type = 0;
            2: get_opcode_type = 0;
            3: get_opcode_type = 0;
            4: get_opcode_type = 0;
            5: get_opcode_type = 1;
            6: get_opcode_type = 1;
            7: get_opcode_type = 1;
            8: get_opcode_type = 1;
            9: get_opcode_type = 2;
            10: get_opcode_type = 3;
            11: get_opcode_type = 4;
            12: get_opcode_type = 4;
            13: get_opcode_type = 5;
        endcase
    endfunction
endpackage: design_pkg
