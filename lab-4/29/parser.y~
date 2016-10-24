/* example.y */

%{
#include <stdio.h>
extern int yyerror(char const *msg);
extern int yylex();
%}

%token PLUS MINUS STAR DIV MOD AND OR GREATER LESS LPAREN RPAREN NUM NEWLINE DONE ID END
%right '&'
%right '|' 
%right '>' '<'
%left '+' '-'
%left '*' '/' '%'

%%
line : /* empty */
     | line expr ';'      	{ printf("%d\n", $2); }
expr : LPAREN expr RPAREN   { $$ = $2; }
     | expr '+' expr       { $$ = $1 + $3; printf("+\n");}
     | expr '-' expr        { $$ = $1 - $3; printf("-\n");}
     | expr '*' expr        { $$ = $1 * $3; printf("*\n");}
     | expr '/' expr	    { $$ = $1 / $3; printf("/\n");}
     | expr '%' expr	    { $$ = $1 % $3; printf("%\n");}
     | expr '&' expr	    { $$ = $1 & $3; printf("&\n");}
     | expr '|' expr	    { $$ = $1 | $3; printf("|\n");}
     | expr '>' expr        { $$ = $1 > $3; printf(">\n");}
     | expr '<' expr        { $$ = $1 < $3; printf("<\n");}
     | NUM                  { $$ = $1; printf("%d\n", $1);}
     ;

%%

int yyerror(char const *msg) {
    printf("Error: %s\n", msg);
    return 0;
}

