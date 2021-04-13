.data
	str1: .asciiz "Olá mundo!"


.text
		#imprime a string "olá mundo" (printf("..."))
		
		la 		$a0, str1
		addi 	$v0, $zero, 4 # código para a impressão de string
		syscall
				
		#retorna para o SO que o programa retornou sem erros (return 0)
		
		addi $v0, $zero, 10
		syscall
		