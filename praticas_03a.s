.section .data

	output: .asciz	"O ID do fabricante eh 'xxxxxxxxxxxx'\n"
	

.section .text

.globl main

main:

	movl	$0, %eax
	cpuid
	
	movl	$output, %edi
	movl	%ebx, 23(%edi)
	movl	%edx, 27(%edi)
	movl	%ecx, 31(%edi)

	pushl	$output
	call	printf
	addl	$4, %esp

	pushl	$0
	call 	exit
