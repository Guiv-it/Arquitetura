  b0 ; 101 instruções
  b5
  ba
  bf
  46 ; 4 bits mais sig de r[9]
  c4
  b0
  44
  e4
  b0
  45 ; 4 bits menos sig de r[9]
  c4 ; r1 = endereço r[9]
  b0
  47
  43
  cc ; r3 = 10(cont)
  47
  47
  44
  c8 ; r2=28 ok
  b0
  0e; pula 7
  31
  41
  dc ; cont-1
  c4 ; i+1
  b0
  1a ; Volta para o branch do r[]
  41
  cc ; r3 = 1(decrementador)
  47
  41
  c4; r1 =&A[9]
  46
  c8 ; r2 = 43
  44
  41 ; r0 = 20
  02
  d3
  d3 ; r0-2
  31
  d7 ; A[i-1]
  1b
  47
  45
  c8 ; r2 = 55 / r2 += 12
  47
  41 ; r0 = 20
  c4 ; r1 = &A[0] + 20 -> B[9]
  02
  d3
  31    ;guarda r0-1
  d3 ; r0-2
  d7 ; B[i-1]
  1b
  bf
  ba
  46 ; 4 bits mais sig do fimsoma
  c8
  44
  c4
  b0
  44
  e8 ; shift de 4
  b0
  45 ; 4 bits menos sig de fims soma
  c8 ; r2 = 99 (DISTANCIA DO PULO fimsoma)
  02 ;
  2d ; r3 = B[i]
  12
  1d
  b0
  47
  43
  d4
  21 ; r0 = A[i]
  cc ; r3 A[i]+B[i]
  12
  18
  b0
  47
  43
  d4 ; r1 = r[i]
  3d ; r[i] = A[i] + B[i]
  12
  19
  b0
  47
  47
  45
  c4 ; r1 = B[i-1] se i = 0 r1 = A[9]
  b0
  12
  19s
  bf
  47
  47
  44
  2d ;r3 = B[i] no ultimo loop A[9] = 18
  d3
  19