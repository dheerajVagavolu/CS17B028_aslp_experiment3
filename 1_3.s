.data

var1: .word 3
var2: .word 5

.text
.globl main
.ent main
main:

lw $t0, var1
lw $t2, var2
xor $t0,$t0,$t2
xor $t2,$t0,$t2
xor $t0,$t0,$t2


li $v0, 10
syscall

.end main

