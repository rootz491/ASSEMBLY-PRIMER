# code to hello world program
#my first code in assembly

.data

helloworldstring:
	.ascii "HELLO WORLD\n"

.text

	.globl _start

_start:
	
	#load all the arguments to write() syscall
	
	movl $4, %eax   # system call number to write()
	movl $1, %ebx	# define FD as stdout which is 1
	movl $helloworldstring, %ecx	# passing buffer by it's pointer ( as label ) into the register
	movl $13, %edx	# buffer length
	int $0x80	# interrept syscall

	# to exit the program

	movl $1, %eax	# call to exit() syscall
	movl $0, %ebx	# 0 as argument to exit() syscall
	int $0x80

