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

endpackage: design_pkg
