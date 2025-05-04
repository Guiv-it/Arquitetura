    xor r0, r0
    xor r1, r1
    xor r2, r2
    xor r3, r3
    addupi 3
    addui 14
    add r1,r0
    xor r0, r0
    addui 10
    add r3, r0  
    addi 3
    add r2, r0  ; r2=13
    xor r0, r0
        st r0, r1
        addi 1
        sub r3, r0
        add r1, r0
        xor r0, r0
        bgzr r3, r2
    addi 1
    add r3, r0
    addui 8
    add r1, r0 ; r1=&A[9] r0=9
    addi 4
    add r2, r0      r2=28
    addi 7 ; r0=20
        sub r0, r3
        sub r0, r3
        st r0, r1
        sub r1, r3
        bgzr r0, r2
    addui 9
    add r2, r0 ; r2 = 36
    addui 11 ; r0 = 20
    add r1, r0 
        sub r0, r3
        st r0, r1  
        sub r0, r3
        sub r1, r3
        bgzr r0, r2
    xor r3 r3
    xor r0, r0
    addui c
    add r2, r0 ; r2 = 47
        ld r3, r1 ; carrega A[i]
        xor r0, r0
        addui 10
        add r1, r0
        ld r0, r1 ; carrega B[i]
        add r3, r0 ; r3 = A[i] + B[i]
        xor r0, r0
        addui 10    
        sub r1, r0 
        sub r1, r0
        st r3, r1  ; R[i] = r3
        add r1, r0 ; r1 = A[i]
        st r3, r1
        xor r0, r0
        addi 1
        sub r1 r0
        bgzr r3, r2
ecall