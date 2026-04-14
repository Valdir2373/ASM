section .data
	pergunta db "Qual seu nome?", 10
	tamPerg EQU $-pergunta
	tamNome EQU 15
	ola db "Ola, "
	tamOla EQU $-ola

section .bss

	nome resb tamNome

section .text
	global _start

perguntaNome:
	mov rax, 1
	mov rdi, 1
	mov rsi, pergunta
	mov rdx, tamPerg
	syscall
	ret

pegarNome:
	mov rax, 0
	mov rdi, 0
	mov rsi, nome
	mov rdx, tamNome
	syscall
	ret

imprimirMsg:
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tamOla
	syscall
	ret

imprimirNome:
	mov rax, 1
	mov rdi, 1
	mov rsi, nome
	mov rdx, tamNome
	syscall
	ret

_start:

call perguntaNome
call pegarNome
call imprimirMsg
call imprimirNome
call closeSystem

closeSystem:
	mov rax, 60
	mov rdi, 0
 	syscall
