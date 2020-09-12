.data

.text

	.globl _start

_start:
	
	movl $1, %eax
	movl $5, %ebx
	movl $10, %ecx
	addl %ecx, %ebx
	int $0x80
