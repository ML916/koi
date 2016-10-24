/* emitter.c */

#include "global.h"

int stack[BSIZE];
int stack_top = -1;

void emit (int t, int tval)  /*  generates output  */
{

  switch(t) {
  case '+' : case '-' : case '*' : case '/': case '=': case '^':
    printf("%c\n", t);push(stack,t); break;
  case DIV:
    printf("DIV\n"); break; 
  case MOD:
    printf("MOD\n"); break;
  case NUM:
	push(stack,tval);
    printf("%d\n", tval); break;
  case ID:
    printf("%s\n", symtable[tval].lexptr); break; 
  default:     
    printf("token %d, tokenval %d\n", t, tval);
  }

}

void push(int array[], int character){
	if(stack_top  == (BSIZE -1)){
		error("Stack is full");
	}
	else{
		stack_top ++;
		stack[stack_top] = character;
	}
	if(character == '+' || character == '-'|| character == '*'|| character == '/' || character == '^' ||character == '='){
		calculate(stack);
	}
}
int pop(int array[]){
	if(stack_top == -1){
		error("Stack is empty");
		return -1;
	}
	else{
		int temp = array[stack_top];
		stack_top --;
		return temp;
	}
}

void calculate(int array[]){
	int firstNr, secondNr, result;
	switch(pop(stack)){
	case '+':
		secondNr = pop(array);
		firstNr = pop(array);
		result = firstNr + secondNr;
		push(array, result);
		break;
	case '-':
		secondNr = pop(array);
		firstNr = pop(array);
		result = firstNr - secondNr;
		push(array, result);
		break;
	case '*':
		secondNr = pop(array);
		firstNr = pop(array);
		result = firstNr * secondNr;
		push(array, result);
		break;
	case '/':
		secondNr = pop(array);
		firstNr = pop(array);
		result = firstNr / secondNr;
		push(array, result);
		break;
	case '^':
		secondNr = pop(array);
		firstNr = result = pop(array);
		int i;
		if(secondNr == 0)
			result = 1;
		else {
			for(i = 0; i < secondNr-1; i++){
				result = result * firstNr;
			}
		}
		push(array, result);
		break;
	case '=':
		secondNr = pop(array);
		firstNr = pop(array);
		result = firstNr = secondNr;
		push(array, result);
		//printf("Value = %d\n", result);
		break;
	}
	printf("Value = %d\n", result);
}


