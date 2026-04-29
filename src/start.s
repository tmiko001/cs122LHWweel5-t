        .global start, stack_top // stack_top defined in t.ld
start:
        ldr sp, =stack_top // set SVC mode stack pointer
        bl new_main // call main() in C
        b . // if main() returns, just loop
        