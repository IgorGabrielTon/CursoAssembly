segment .data
    Write           equ     0x4
    Read            equ     0x3
    ConsoleWrite    equ     0x1
    ConsoleRead     equ     0x0
    PularLinha      equ     0xA
    FimDoTexto      equ     0xD
    ExecutarCmd     equ     0x80
    SairApp         equ     0x1
    SemErros        equ     0x0
    LimiteChar      equ     0x80
 

section .data
    x       dd      5
    y       dd      2
    msg1    db      'X maior', PularLinha, FimDoTexto
    tam1    equ     $- msg1
    msg2    db      'Y maior', PularLinha, FimDoTexto
    tam2    equ     $- msg2
    
section .text
    global _start

_start:
    MOV EAX, DWORD[x]
    MOV EBX, DWORD[y]
    
    CMP EAX, EBX
    ;Se for Maior
    JGE Maior
    ;Else
    MOV ECX, msg2
    MOV EDX, tam2
    ;Chama Final!
    JMP Fim

Maior:
    MOV ECX, msg1
    MOV EDX, tam1
    
Fim:
    MOV EAX, Write
    MOV EBX, ConsoleWrite
    int ExecutarCmd
    
    MOV EAX, SairApp
    MOV EBX, SemErros
    int ExecutarCmd
    
