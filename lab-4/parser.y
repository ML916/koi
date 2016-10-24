/* example.y */

%{
#include <stdio.h>
extern int yyerror(char const *msg);
extern int yylex();
%}

%token PLUS MINUS STAR DIV MOD AND OR GREATER LESS LPAREN RPAREN NUM NEWLINE DONE ID END
%right OR
%right AND
%right GREATER LESS
%left PLUS MINUS
%left STAR DIV MOD

%%
line : /* empty */
     | line expr END      	{ printf("%d\n", $2); }
expr : LPAREN expr RPAREN   { $$ = $2; }
     | expr PLUS expr       { $$ = $1 + $3; printf("+\n");}
     | expr MINUS expr        { $$ = $1 - $3; printf("-\n");}
     | expr STAR expr        { $$ = $1 * $3; printf("*\n");}
     | expr DIV expr	    { $$ = $1 / $3; printf("/\n");}
     | expr MOD expr	    { $$ = $1 % $3; printf("%\n");}
     | expr AND expr	    { $$ = $1 & $3; printf("&\n");}
     | expr OR expr	    { $$ = $1 | $3; printf("|\n");}
     | expr GREATER expr        { $$ = $1 > $3; printf(">\n");}
     | expr LESS expr        { $$ = $1 < $3; printf("<\n");}
     | NUM                  { $$ = $1; printf("%d\n", $1);}
     ;

%%

int yyerror(char const *msg) {
    printf("Error: %s\n", msg);
    return 0;
}

