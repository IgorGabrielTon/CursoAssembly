section .data
    msg db 'Olá Mundo Compuway!', 0xa ; Cria uma variável chamada msg do tipo Byte, e o 0xa finaliza ela!
    tamanho equ $ - msg ; Calcula o peso da mensagem e coloca na variavel tamanho

section .text
    global _start

_start:
    mov edx, tamanho ; Coloca o tamanho da var no registrador EDX
    mov ecx, msg ; Coloca a mensagem no registrador ECX
    mov ebx, 1 ; Coloca a informação de saida de dados 1 no ebx
    mov eax, 4; Coloca o comando escreva no EAX
    int 0x80; Chama o Kernel (Sistema para executar o comando)
    
    mov eax, 1; Coloca o comando sair no EAX
    int 0x80 ; Chama o Kernel
    RET; Finaliza o rotulo
