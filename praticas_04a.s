.section .data
	saida:	.asciz	"Soma: %d + %d = %d\n"

	n1:		.int	10
	n2: 	.int 	25
	n3: 	.int	5

	v1:		.int	10, 25, 5

.section .bss

.lcomm res, 4

.section 	.text

.globl 		main

main:

	movl	n3, %eax
	addl 	n2, %eax
	addl 	n1, %eax
	movl	%eax, res

	pushl	res
	pushl	n3
	pushl	n2
	pushl	n1
	pushl	$saida

	call	printf
	addl	$20, %esp
