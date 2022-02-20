%include 'BilbiotecaAssembly.ig'

section .text
    global _start
 
 _start:
    ; Preparação da variável
    LEA ESI, [Mensagem] ; (Load Effective Addres)  Liga o registrador ESI com a var Mensagem da bilbioteca criada
    ADD ESI, 0x9 ; Coloca na var apóstrofos vazios, indicação de string
    MOV BYTE[ESI], 0xA ; Coloca uma quebra de linha no final do esi
    
    ;Escrevendo o meu nome na variável
    

    ;Colocando a letra R
    DEC ESI         ;Aponta para o inicio da string
    MOV DL, 0x28    ;Coloca o R minusculo no inicio da string
    ADD DL, '0'     ;Fala que o COMANDO ACIMA é uma letra da tabela ASCII
    MOV [ESI], DL   ;Move a letra para o ponteiro do esi
    
    ;Colocando a letra O
    DEC ESI         ;Aponta para o inicio da string
    MOV DL, 0x25    ;Coloca o O minusculo no inicio da string
    ADD DL, '0'     ;Fala que o COMANDO ACIMA é uma letra da tabela ASCII
    MOV [ESI], DL   ;Move a letra para o ponteiro do esi
    
    ;Colocando a letra G
    DEC ESI         ;Aponta para o inicio da string
    MOV DL, 0x17    ;Coloca o G minusculo no inicio da string
    ADD DL, '0'     ;Fala que o COMANDO ACIMA é uma letra da tabela ASCII
    MOV [ESI], DL   ;Move a letra para o ponteiro do esi
    
    ;Colocando a letra I
    DEC ESI         ;Aponta para o inicio da string
    MOV DL, 0x39    ;Coloca o I maiúsculo no inicio da string
    ADD DL, '0'     ;Fala que o COMANDO ACIMA é uma letra da tabela ASCII
    MOV [ESI], DL   ;Move a letra para o ponteiro do esi
    
    CALL EscreverMsg
    CALL SairApp 
   
