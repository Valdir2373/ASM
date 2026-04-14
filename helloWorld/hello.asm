section .data
	mensagem db 'Hello, World!', 10
	tam equ 14

section .text
	global _start

_start:
	mov rax, 1 ;indentificador da chamada sys_write
	mov rdi, 1 ;saida padrao
	mov rsi, mensagem
	mov rdx, tam
	syscall
	
	mov rax, 60 ; indentificador de sys_exit
	mov rdi, 0
	syscall
