section .data
	ola db "Ola "
	ana db "Ana",10
	tam equ 8

		; ['Ola ','ana']-> apontamos o ponteiro ola e continou imprimindo do seu index ate oito 'Ola ' <-- foi 4  'ana\n' <-- +4, 4+4=8, entao imprimos do ponteiro ola ate 8 bytes de memoria... 'Ola ana\n'

section .text

	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, ola
	mov rdx, tam
	syscall



	mov rax, 60
	mov rdi, 0
	syscall

