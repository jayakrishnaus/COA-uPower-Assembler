.data
N:  .word 3
X:  .word 100, 23, 93
Sum:  .asciiz "The Sum : "
.text

loop:
  la 6, 0(X)
  add 7, 7, 6
  subi 5, 5, 1
  bne 5, 0, loop
  bclr

main:
  la 5, 0(N)
  li 7, 0
  li 0, 0

  bl loop

  li 4, 0
  la 4, 0(Sum)
  sc 4
  li 4, 0

  addi 4, 7, 0
  sc 4
  li 4, 0
