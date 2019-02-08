.data

a: .word 48
var1: .word 8
varone: .word 1 

.text
.globl main
.ent main
main:

lw $t0, a
lw $t1, var1
lw $t2, varone

Loop:
	
	beq $t1,$t2, exit
	srl $t1,$t1,1
	srl $t0,$t0,1
	j Loop
	

exit:

add $a0 , $t0 , $zero

li $v0, 1
syscall

li $v0, 10
syscall

.end main

