.section .data
	output: .asciz "O ID do fabricante é '%s'\n"

.section .bss

.lcomm fabri, 16

.section .text

.globl main

main:

	movl $0, %eax
	cpuid

	movl $fabri, %edi
	movl %ebx, 0(%edi)
	movl %edx, 4(%edi)
	movl %ecx, 8(%edi)
	movl $0, 12(%edi)

	pushl $fabri
	pushl $output
	call  printf
	popl  %eax
	popl  %eax

	pushl $0
	call  exit	
