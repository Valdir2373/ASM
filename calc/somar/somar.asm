section .data
    msgNumero1 db 'Digite numero 1: ', 10
    msgNumero2 db 'Digite numero 2: ', 10
    tamMsgNumeros equ 18 

section .bss
    numero1 resb 5
    numero2 resb 5
    resultado resb 5

section .text
global _start

_getNumero1:
    mov rax, 0
    mov rdi, 0
    mov rsi, numero1
    mov rdx, 5        
    syscall
    ret

_getNumero2:
    mov rax, 0
    mov rdi, 0
    mov rsi, numero2
    mov rdx, 5        
    syscall
    ret

_printMessageN1:
    mov rax, 1
    mov rdi, 1
    mov rsi, msgNumero1
    mov rdx, tamMsgNumeros
    syscall
    ret

_printMessageN2:
    mov rax, 1
    mov rdi, 1
    mov rsi, msgNumero2
    mov rdx, tamMsgNumeros
    syscall
    ret

_somarNumeros:
    mov al, [numero1 + 2]
    sub al, '0'
    mov bl, [numero2 + 2]
    sub bl, '0'
    add al, bl
    add al, '0'
    mov [resultado + 2], al

    mov al, [numero1 + 1]
    sub al, '0'
    mov bl, [numero2 + 1]
    sub bl, '0'
    add al, bl
    add al, '0'
    mov [resultado + 1], al

    mov al, [numero1]
    sub al, '0'
    mov bl, [numero2]
    sub bl, '0'
    add al, bl
    add al, '0'
    mov [resultado], al
    ret

_printSoma:
    mov rax, 1         
    mov rdi, 1         
    mov rsi, resultado   
    mov rdx, 3         
    syscall
    
    mov byte [resultado], 10
    mov rax, 1
    mov rdi, 1
    mov rsi, resultado
    mov rdx, 1
    syscall
    ret

_start:
    call _printMessageN1
    call _getNumero1
    call _printMessageN2
    call _getNumero2
    call _somarNumeros
    call _printSoma

    mov rax, 60        
    xor rdi, rdi       
    syscall