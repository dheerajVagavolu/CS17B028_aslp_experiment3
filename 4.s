.data



.text
.globl main
.ent main
main:

addi $t0,$t0,5
addi $t1,$t0,8

and $t3, $t1, $t2
or $t4, $t1, $t2
xor $t5, $t1, $t2
nor $t6, $t1, $t2

# this is xnor -- 

nor $t8, $t1,$zero




addi $s0,$s0,1

addi $s2,$s2,1




#this is to do 2's complement at t0 register.

nor $t0, $t0, $zero

Loop:
	
	beq $s1,$s0, exit
	
	and $s3,$s2,$t0
	
	beq $s3,$zero, one 
	
	
	xor $t0,$t0,$s2
	
	sll $s2,$s2,1
	
	
	
	
	j Loop
	
	one:
	
	or $t0,$s2,$t0
	
	

exit:





add $a0 , $t0 , $zero

li $v0, 1
syscall

li $v0, 10
syscall

.end main

