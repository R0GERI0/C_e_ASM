#=================================================
#Objetivo: Criar Executavel com vários OBJ
#Versão:
#Programador: ROGER
#Licença: Software de uso livre e código aberto.
#=================================================#

CC= gcc
namefile= CalcSum
obj= $(namefile)1.o $(namefile).o

Start: $(obj)
	$(CC) $(obj) -o $(namefile).exe

$(namefile)1.o: $(namefile)1.asm
	fasm $(namefile)1.asm $(namefile)1.o
	
$(namefile).o: $(namefile).c
	$(CC) $(namefile).c -c

	
$(namefile).s:	
	gcc $(namefile).c -S -masm=intel	

clear:
	del	$(namefile).o
	del	$(namefile)1.o
	del $(namefile).exe
