/* example.lex */

%{
#include <stdio.h>
#include "parser.tab.h"
%}

%option noyywrap

%%

[ \t]+    { /* ignore whitespace */ }
"("       { return LPAREN; }
")"       { return RPAREN; }
"+"       { return PLUS; }
"-"       { return MINUS; }
"*"       { return STAR; }
"/"	  { return DIV; }
"<"	  { return LESS; }
">"	  { return GREATER; }
"%"	  { return MOD; }
"&"	  { return AND; }
"|"	  { return OR; }
\n        { return NEWLINE; }
[0-9]+    { yylval = atoi(yytext); return NUM; }
.         { printf("Ignoring invalid character '%s'\n", yytext); }

%%