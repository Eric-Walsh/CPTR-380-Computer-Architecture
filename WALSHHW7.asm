 ########################################################################
#         A MIPS program to run question 2.25 from HW 3
#     Filename:   WALSHHW7.s
#     Author:      E.Walsh
#     Version:     1/26/22
#     Processor:   MIPS
#     Notes:       for execution using the SPIM simulator
#             Implements this functionality:
#                  for(int i = 0; i < a; i++){
#						for(int j = 0; j< b; j==){
#                       	D[4*j] = i + j;
#                     	}
#                  }
########################################################################

	.data
arrayD:	.space 100		# 100 bytes (25 words) reserved for arrayD
varA:	.word  6	
varB:   .word  15
varI:   .word  6
varJ:	.word  15

	.text
				# s0 is A
				# s1 is B
				# t0 is i
				# t1 is j
main:	la	$t2, varA	# get address of A
	la	$t3, varB	# get address of B
	lw	$s0, 0($t2)	# get A
	lw	$s1, 0($t3)	# get B
	la	$s2, arrayD # get address of arrayD
	la	$t2, varI	# get address of I
	la	$t3, varJ	# get addressof J
	lw	$t0, 0($t2)	# get I
	lw	$t1, 0($t3)	# get J

	add	$t0, $zero, 0	#set i to 0
loop1:	add	$t1, $zero, 0	#set j to 0
loop2:	sll $t2, $t1, 2	#left shift j by 2
	add $t2, $t2, $s2	#grab the address of D[4*j]
	add	$t3, $t0, $t1	#add i + j
	sw	$t3, 0($t2)		#place i + j int D[4*j]
	beq $t1, $s1, exit2 #compare j and b
	addi $t1, 1			#add 1 to j
	j loop2
exit2:	beq	$t0, $s0, exit1 #compare i and a
	addi $t0, 1			#add 1 to i
	j loop1

exit1:	addi	$v0, $0, 10	# terminate the program with system call #10
	syscall