/* main.c */

#include "global.h"

int main(void)
{
  init();
  yyparse();
  exit(0);    /*  successful termination  */
}
