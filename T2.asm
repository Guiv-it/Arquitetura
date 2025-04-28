    xor r0, r0
    xor r1, r1
    xor r2, r2
    xor r3, r3
    addi 6
    xor r0, r0
    addupi 4
    addi 5
    add r1,r0
    xor r0, r0
    addui 10
    add r3, r0  
    addui 13
    add r2, r0  ; r2=23
    xor r0, r0
        brzr r3, r2 ; r0=livre r1=&r[0] r2=fimloopr r3=10
        st r0, r1
        addi 1
        sub r3, r0
        add r1, r0
        xor r0, r0
        ji -6
    addi 1
    add r3, r0
    addui 8
    add r1, r0 ; r1=&A[9] r0=9
    addi 4
    add r2, r0
    addi 7 ; r0=20
        brzr r0, r2 ; r0=20 r1=&A[9] r2=fimloopA r3=1
        sub r0, r3
        sub r0, r3
        st r0, r1
        sub r1, r3
        ji -5
    addui 11
    add r2, r0 ; r2 = 46
    addui 9 ; r0 = 20
    add r1, r0 
        brzr r0, r2 ; r0=20 r1=&B[9] r2=fimloopB r3=1
        sub r0, r3
        st r0, r1  
        sub r0, r3
        sub r1, r3
        ji -5
    xor r3 r3
    xor r2, r2
    addupi x 
    addi y
    xor r0, r0
    addupi w
    addi z
    add r2, r0 ;; r2 = 99 (DISTANCIA DO PULO fimsoma)
        brzr r0, r2
        ld r3, r1
        ji s1
        ji soma 
        xor r0, r0
        addi 7
        addi 3
        sub r1, r0
        ld r0, r1
        add r3, r0
        ji s2
        ji d1
        xor r0, r0
        addi 7
        addi 3
        sub r1, r0
        st r3, r1
        ji s3
        ji d2
        xor r0, r0
        addi 7
        addi 7
        addi 5
        add r1, r0
        xor r0, r0
        ji s4
        ji d3
        xor r3, r3
        addi 7
        addi 7
        addi 4
        ld r3, r1
        sub r0, r3 
    ji d4
ecall