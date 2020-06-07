;----------------------------------------------------------
; Esta rotina imprime um caractere na tela usando a função 
; de chamada do DOS 02h
; Reg.Usados: DL - Byte a imprimir na tela
; Usa:Montador NASM
;----------------------------------------------------------
global	IMP_CAR
IMP_CAR:	
			push ax     ;Salva AX
			mov  ah,02  ;Função 02-DOS(Imprime Caracter)
			int  0x21   ;Interrupção 21-DOS
			pop  ax     ;Recupera Registrador
			ret         ;Retorno da rotina
