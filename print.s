.text
.global _start
_start:
	mov r7, #4
	mov r0, #1
	mov r2, #12
	ldr r1, =string
	swi 0
	mov r7, #1
	swi 0
	.data
string:
	.ascii "Hello World\n"
