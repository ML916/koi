OBJ = lexer.o parser.tab.o symbol.o init.o error.o main.o 
SRC = lexer.cpp parser.ypp  symbol.cpp init.cpp error.cpp main.cpp
EXE = calc

calc:	$(OBJ)
	g++ -Wall -o calc $(OBJ)

main.o: 	main.cpp global.h
	g++ -Wall -c main.cpp

lexer.o: 	lexer.cpp global.h parser.tab.h
	g++ -Wall -c lexer.cpp

parser.tab.c parser.tab.h: parser.ypp
	bison -d parser.ypp

parser.o: 	parser.tab.cpp global.h
	g++ -Wall -c parser.tab.c


symbol.o: 	symbol.cpp global.h
	g++ -Wall -c symbol.cpp

init.o: 	init.cpp global.h
	g++ -Wall -c init.cpp

error.o: 	error.cpp global.h
	g++ -Wall -c error.cpp

clean: 
	rm -f $(EXE) $(OBJ) 29.tar.gz 29.zip *~

archives: clean
	cd ..; rm 29.tar 29.zip 29/29.tar 29/29.zip; tar -cvf 29.tar 29; gzip -9 29.tar; zip -r 29.zip 29; mv 29.zip 29/29.zip; mv 29.tar.gz 29/29.tar.gz
