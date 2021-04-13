# estruturaBasica2.asm
#
# DESC: Programa demonstrativo de conversão de cod. em C para assembly
#
# DDA: 12.04.21
#
# -------------------------------------------------------------------------



.data
	str1: .asciiz "Qual a resposta para tudo?\n"
	str2: .asciiz "não não não!! eh "
	str3: .asciiz "\n"
	resCor: .word 42
	resErr: .word 46
	
.text
	
	# pergunta
	la $a0, str1
	addi $v0, $zero, 4
	syscall
	
	#imprime um inteiro: resErr
	la $t0, resCor
	lw $a0, 0($t0)
	addi $v0, $zero, 1
	syscall	
	
	
	#return 0	
	addi 	$v0, $zero, 10
	syscall 