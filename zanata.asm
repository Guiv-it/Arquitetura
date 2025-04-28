    xor r0, r0
    xor r1, r1
    xor r2, r2
    xor r3, r3
    addi 6 ; 4 bits mais sig de &R[9]
    add r1, r0
    xor r0, r0
    addi 4
    slr r1, r0
    xor r0, r0
    addi 5 ; 4 bits menos sig de &R[9]
    add r1, r0 ; r1 = &R[9] = 100
    xor r0, r0
    addi 7
    addi 3
    add r3, r0 ; r3 = 10(cont)
    addi 7
    addi 7
    addi 4
    add r2, r0 ; r2 = &fimloopr = 28
    xor r0, r0
loopr:
    brzr r3, r2 ; pula fimloopr
    st r0, r1
    addi 1
    sub r3, r0 ; cont-1 
    add r1, r0 ; i+1
    xor r0, r0
    ji loopr ; Volta para 
fimloopr:
    addi 1
    add r3, r0 ; r3 = 1(decrementador)
    addi 7
    addi 1
    add r1, r0 ; r1 =&A[9]
    addi 6
    add r2, r0 ; r2 = &43
   addi 4 
    addi 1 ;; r0 = 20
loopA:
    brzr r0, r2
    sub r0, r3
    sub r0, r3 ;; r0-2
    st r0, r1
    sub r1, r3 ;; A[i-1]
    ji loopA
fimloopA:
    addi 7
    addi 5
    add r2, r0 ; r2 = 55 / r2 += 12
    addi 7
    addi 1 ;; r0 = 20
    add r1, r0 ;; r1 = &A[0] + 20 -> B[9]
loopB:
    brzr r0, r2
    sub r0, r3
    st r0, r1    ;;guarda r0-1
    sub r0, r3 ;; r0-2
    sub r1, r3 ;; B[i-1]
    ji loopB
fimloopB:
    xor r3, r3
    xor r2, r2
    addi 6 ; 4 bits mais sig do fimsoma
    add r2, r0
    addi 4
    add r1, r0
    xor r0, r0
    addi 4
    slr r2, r0 ; shift de 4
    xor r0, r0
    addi 5 ; 4 bits menos sig de fims soma
    add r2, r0 ;; r2 = 99 (DISTANCIA DO PULO fimsoma)
soma:
   brzr r0, r2 ;;
   ld r3, r1 ;; r3 = B[i]
   ji s1
d1:
   ji soma
s1:   
   xor r0, r0
   addi 7
   addi 3
   sub r1, r0
   ld r0, r1 ;; r0 = A[i]
   add r3, r0 ;; r3 A[i]+B[i]
   ji s2
d2:
   ji d1
s2:
   xor r0, r0
   addi 7
   addi 3
   sub r1, r0 ;; r1 = r[i]
   st r3, r1 ;; r[i] = A[i] + B[i]
   ji s3
d3:
   ji d2
s3:
   xor r0, r0
   addi 7
   addi 7
   addi 5
   add r1, r0 ;; r1 = B[i-1] se i = 0 r1 = A[9]
   xor r0, r0
   ji s4
d4:
   ji d3
s4:
   xor r3, r3
   addi 7
   addi 7
   addi 4
   ld r3, r1 ;r3 = B[i] no ultimo loop A[9] = 18
   sub r0, r3 
   ji d4
fimsoma:
    ecall
