.data

a: .word 3
var1: .word 5
c: .word 6
x: .word 1

.text
.globl main
.ent main
main:

lw $t0, a
lw $t1, var1
lw $t2, c
lw $t4, x


mul $t5,$t4,$t4
mul $t5,$t0,$t5

add $t6,$t5,0
add $t6,$t6,$t2

mul $t1,$t1,$t4
sub $t6,$t6,$t1 #value of ax2 - bx + c is stored in register t6.


li $v0, 10
syscall

.end main

