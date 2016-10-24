/* example.y */

%{
#include <stdio.h>
extern int yyerror(char const *msg);
extern int yylex();
%}

%token PLUS MINUS STAR DIV MOD AND OR GREATER LESS LPAREN RPAREN NUM NEWLINE
%right OR
%right AND
%right GREATER LESS
%left PLUS MINUS
%left STAR DIV MOD

%%
line : /* empty */
     | line expr NEWLINE      { printf("%d\n", $2); }
expr : LPAREN expr RPAREN     { $$ = $2; }
     | expr PLUS expr         { $$ = $1 + $3; }
     | expr MINUS expr        { $$ = $1 - $3; }
     | expr STAR expr         { $$ = $1 * $3; }
     | expr DIV expr	      { $$ = $1 / $3; }
     | expr MOD expr	      { $$ = $1 % $3; }
     | expr AND expr	      { $$ = $1 & $3; }
     | expr OR expr	      { $$ = $1 | $3; }
     | expr GREATER expr      { $$ = $1 > $3; }
     | expr LESS expr         { $$ = $1 < $3; }
     | NUM                 { $$ = $1; }
     ;

%%

int yyerror(char const *msg) {
    printf("Error: %s\n", msg);
    return 0;
}

int main() {
    printf("%d\n", yyparse());
    return 0;
}
