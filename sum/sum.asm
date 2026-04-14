section .data


section .text

global _start

_start:

	mov rax, 10
	mov rbx, 5
	add rax, rbx

	mov rax, 60
	mov rdi, 0
	syscall




