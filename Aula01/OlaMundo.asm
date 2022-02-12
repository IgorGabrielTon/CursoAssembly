section .data
  Msg DQ 'Olá Mundo Assembly!', 0x0a
  Peso EQU $ - Msg
  
 section .text
  global main:
 
 main:
  MOV EAX, Peso
  MOV EBX, Msg
  int 0x80
  
  MOV EAX, 1
  RET
