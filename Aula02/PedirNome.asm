segment .data
    PulaLinha   equ     0xA 
    Executar    equ     0x80
    Nulo        equ     0xD
    ;Enviar no EAX
    Escreva     equ     0x4
    Leia        equ     0x3
    Sair        equ     0x1
    ;Enviar no EBX
    Return      equ     0x0
    ConsoleSair equ     0x1
    ConsoleIN   equ     0x0
    
    
section .data
    Aviso   db    'Digite seu nome: ', PulaLinha, Nulo
    tam     equ     $- Aviso
    
    
section .bss
    Nome resb 1

section .text
    global _start

_start:

    MOV EAX, Escreva
    MOV EBX, ConsoleSair
    MOV ECX, Aviso
    MOV EDX, tam
    int Executar

    MOV EAX, Leia
    MOV EBX, ConsoleIN
    MOV ECX, Nome
    MOV EDX, 0x10
    int Executar

    MOV EAX, Escreva
    MOV EBX, ConsoleSair
    MOV ECX, Nome
    MOV EDX, 0x10
    int Executar
    
    MOV EAX, Sair
    MOV EBX, Return
    INT Executar
    
