 COMMENT @
    TEÓRIA EM ASSEMBLY
    
    App divido em seções:
    section .data
        Usada para variáveis e dados inicializados
    section .bbs
        Usada para dados não inicializados reserva de variáveis
    section .text
        Fica os códigos e as instruções
    
    
    Variáveis
    Tipos:  Byte (1) DB
            Word (2) DW
            Double Word (4) DD
            Quad Word (8) DQ
            Ten Word (10) DT
    Sintaxe:
            NomeVar Tipo Valor
    section .data
        Idade DD 18
        Status DB 0
        
 @
