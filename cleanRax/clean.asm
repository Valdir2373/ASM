section .text
global _start

_start:
	mov rax, 999 ;sujo
	xor rax, rax;limpado e agora o valor fica zero, melhor que 'mov rax, 0' isso demora e o binario fica maior :)
	syscall

	call exitProgram 


exitProgram:
	mov rdi, rax
	mov rax, 60
	syscall

