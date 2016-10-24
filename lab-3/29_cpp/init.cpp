/* init.c */

#include "global.h"
#include "parser.tab.h"

struct entry keywords[] = {
  { "div", DIV },
  { "mod", MOD, },
  { 0,     0 }
};

void init()  /*  loads keywords into symtable  */
{
  struct entry *p;
  for (p = keywords; p->token; p++){
    int code = insert(p->lexptr, p->token);
    //printf("%d\n", code);
  }
}
