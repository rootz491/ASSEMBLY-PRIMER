#how how to use data types and movx instruction

.data

	string:
		.ascii "hello world"
	
	bytelocation:
		.byte 10

	int32:
		.int 2
	
	int16:
		.short 3
	
	float:
		.float 10.23
	
	intarray:
		.int 10,20,30,40,50

.bss

	.comm largebuffer, 10000

.text
	.globl _start

_start:
	    nop
		#exit syscall to exit the program
		
		movl $1, %eax
		movl $0, %ebx
		int $0x80




		
