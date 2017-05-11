#aula 2

.section .data

output: .ascii "O fabricante 'xxxxxxxxxxxx' foi identificado\n"

.section .text

.globl _start

_start:
	
	movl $0, %eax
	cpuid

	movl	$output, %edi
	movl 	%ebx, 23(%edi) # posicao 23 da area apontada
	movl	%edx, 27(%edi) # posicao 27 da area apontada
	movl 	%ecx, 31(%edi) # posicao 31 da area apontada

# %eax contem o numero da system call
# %ebx contem o descritor de arquivo a escrever
# %ecx contem o inicio da string
# %edx contem o tamanho da string

_passo1:

	movl	$4, %eax
	movl	$1, %ebx
	movl	$output, %ecx
	movl 	$51, %edx
	int	$0x80

_exit:

	movl	$1, %eax
	movl	$0, %ebx
	int	$0x80


