.data 

x:		.word 	42
y: 		.word 	100

str1: 	.asciiz "String de teste\n"
str2: 	.asciiz "x eh menor que y\n"
str3: 	.asciiz	"x eh  maior que y\n"

.text


		la 		$s0, x			#carrega o endereco
		lw		$s0, 0($s0)		#carrega o conteudo do endereco

		la 		$s1, y
		lw 		$s1, 0($s1)

IF_1: 	slt		$t0, $s0, $s1
		beq 	$t0, $zero, END_IF1
		
		# -- Corpo do if --
		la 		$a0, str1
		addi 	$v0, $zero, 4
		syscall
		
		
END_IF1: 
		
# 		estrutura if/else:
IF_2:
		slt	 	$t0, $s0, $s1
		beq		$t0, $zero, ELSE2
		
		la		$a0, str2
		addi 	$v0, $zero, 4
		syscall

		j		END_IF2
		
ELSE2:
		la		$a0, str3
		addi 	$v0, $zero, 4
		syscall

		j		END_IF2

END_IF2:
		
		#return 0
		addi 	$v0, $zero, 10
		syscall



