segment .data
    Write           equ     0x4
    Read            equ     0x3
    ConsoleWrite    equ     0x1
    ConsoleRead     equ     0x0
    PularLinha      equ     0xA
    FimDoTexto      equ     0xD
    ExecutarApp     equ     0x80
    SairApp         equ     0x1
    SemErros        equ     0x0
    LimiteChar      equ     0x80
    
section .data
    header  db  'Aplicativo feito por Igor Gabriel', PularLinha, FimDoTexto
    body1   db  '', PularLinha, FimDoTexto
    body2   db  'Digite seu nome para começar: ', PularLinha, FimDoTexto
    Tamanho equ $- header
    
section .bss
    Nome resb 1
    
    
section .text
    global _start:

_start:
    ; Apresenta as msg no inicio do app
    MOV EAX, Write
    MOV EBX, ConsoleWrite
    MOV ECX, header
    MOV EDX, Tamanho
    INT ExecutarApp
    
    ; Lê o nome digitado
    MOV EAX, Read
    MOV EBX, ConsoleRead
    MOV ECX, Nome
    MOV EDX, LimiteChar
    INT ExecutarApp    
    
    ;Escreve o nome na tela
    MOV EAX, Write
    MOV EBX, ConsoleWrite
    MOV ECX, Nome
    MOV EDX, LimiteChar
    INT ExecutarApp  
    
    ; Finaliza o App
    MOV EAX, SairApp
    MOV EBX, SemErros
    INT ExecutarApp
