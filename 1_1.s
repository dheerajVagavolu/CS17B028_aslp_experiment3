.data

var1: .word 3
var2: .word 5

.text
.globl main
.ent main
main:

lw $t0, var1
lw $t2, var2
addi $t1,$t0,0

add $t0,$t0,$t2
sub $t0,$t0,$t1

add $t2,$t2,$t1
sub $t2,$t2,$t0

li $v0, 10
syscall

.end main

