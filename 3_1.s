.data

a: .word 4
var1: .word 16
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
	sll $t0,$t0,1
	j Loop
	

exit:


li $v0, 10
syscall

.end main

