OBJ = lex.yy.o parser.tab.o symbol.o init.o error.o main.o 
SRC = lexer.c parser.y  symbol.c init.c error.c main.c
EXE = calc

calc:	$(OBJ)
	gcc -Wall -o calc $(OBJ)

main.o: 	main.c global.h
	gcc -Wall -c main.c

lex.yy.o: 	lex.yy.c global.h parser.tab.h
	gcc -Wall -c lex.yy.c

parser.tab.c parser.tab.h: parser.y
	bison -d parser.y

lex.yy.c: lexer.l
	flex lexer.l

parser.o: 	parser.tab.c global.h
	gcc -Wall -c parser.tab.c


symbol.o: 	symbol.c global.h
	gcc -Wall -c symbol.c

init.o: 	init.c global.h
	gcc -Wall -c init.c

error.o: 	error.c global.h
	gcc -Wall -c error.c

clean: 
	rm -f $(EXE) $(OBJ) 29.tar.gz 29.zip *~

archives: clean
	cd ..; rm 29.tar 29.zip 29/29.tar 29/29.zip; tar -cvf 29.tar 29; gzip -9 29.tar; zip -r 29.zip 29; mv 29.zip 29/29.zip; mv 29.tar.gz 29/29.tar.gz
