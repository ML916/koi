	#include<stdio.h>

	#define FAC(n) n == 0? 1: n * FAC(n - 1)
	#define hej(x) x*2 

	/*int factorial(int n) {
		return n==0? 1:	n * factorial(n - 1);
	}*/

	int main(void){
		int input;
		// scanf("%d", &input);
		// printf("%d\n", FAC(5));
		int x = FAC(3);
	  	int x = 3 == 0? 1: 3 * FAC(3 - 1);
    		int x = 3 == 0? 1: 3 * 3 - 1 == 0? 1: 3 - 1 * FAC(3 - 1 - 1);
     		int x = 3 == 0? 1: 3 * 3 - 1 == 0? 1: 3 - 1 * 3 - 1 - 1 == 0? 1: 3 - 1 - 1 * FAC(3 - 1 - 1 - 1);
		int x = 3 == 0? 1: 3 * 3 - 1 == 0? 1: 3 - 1 * 3 - 1 - 1 == 0? 1: 3 - 1 - 1 * 3 - 1 - 1 - 1 == 0? 1: 3 - 1 - 1 - 1 * FAC(3 - 1 - 1 - 1 - 1);

		return 0;
	}

