segment .data
    Escreva                 equ     0x4
    Leia                    equ     0x3
    ConsoleEscreva          equ     0x1
    ConsoleLeia             equ     0x0
    PularLinha              equ     0xA
    FimDoTexto              equ     0xD
    ExecutarCodigos         equ     0x80
    SairApp                 equ     0x1
    SemErros                equ     0x0
   
   TamanhoMensagem          equ     0x10
   
 section .bss
    Mensagem    resb  0x1
 
 
 EscreverMsg:
    MOV EAX, Escreva
    MOV EBX, ConsoleEscreva
    MOV ECX, Mensagem
    MOV EDX, TamanhoMensagem
    INT ExecutarCodigos
    RET
 
 SairApp:
    MOV EAX, SairApp
    MOV EBX, SemErros
    INT ExecutarCodigos
    
