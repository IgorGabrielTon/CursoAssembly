section .data
    Nome        db          'Olá, Meu nome é Igor Gabriel', 0xa
    PesoNome    equ         $ - Nome
    Escola      db          'Eu trabalho na Compuway - Indaiatuba', 0xa
    PesoEscola  equ         $ - Escola

section .text
    global _start
    
_start:
    mov edx, PesoNome
    mov ecx, Nome
    mov ebx, 1 
    mov eax, 4
    int 0x80
    mov edx, PesoEscola
    mov ecx, Escola
    mov ebx, 1
    mov eax, 4
    int 0x80
    mov eax, 1
    int 0x80
    
    
