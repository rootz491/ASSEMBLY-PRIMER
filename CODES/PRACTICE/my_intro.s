.data

    msg: 
    	.ascii "my name is karan\n"
    len1: 
    	.byte 17
.text

	.globl _start

_start:	
    movl $4,%eax
    movl $1,%ebx
    movl $msg,%ecx
    movl len1,%edx
    int $0x80
    movl $1,%eax
    movl $0,%ebx
    int $0x80
