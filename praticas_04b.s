.section .data


	
#abertura:	.asciz	"\nPrograma para Somar 35 + 25 - 18 + x - y\n"
#saida:		.asciz 	"Soma: 35 + 25 - 18 + %d - %d = %d\n"
#pedenx: 	.asciz 	"\nEntre com o valor de x = "
#pedeny: 	.asciz 	"\nEntre com o valor de y = "
formato: 	.asciz	"%d" #usado pelo scanf para saber o tipo do dado a ser lido

peden1:		.asciz	"\nEntre o primeiro valor: "
peden2:		.asciz 	"\nEntre o segundo valor: "
peden3:		.asciz	"\nEntre o terceiro valor: "

vector:		.int 	0, 0, 0

#x:	.int 0
#y: .int 0
#res: .int 0

.section .text

.globl	main

main
	
	pushl 	$peden1
	call 	printf
	pushl 	$x
	pushl	$formato
	call	scanf

	pushl 	$pedeny
	call 	printf
	pushl 	$y
	pushl	$formato
	call	scanf
	
	movl 	$35, %eax
	addl	$25, %eax
	subl	$18, %eax
	addl	x  , %eax
	subl	y  , %eax
	movl	%eax, res

	pushl	res
	pushl	y
	pushl	x
	pushl	$saida
	call	printf

	call 	exit
