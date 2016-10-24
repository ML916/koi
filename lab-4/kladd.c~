#include <stdio.h>


int main(void){
	int state = 1;
	char input;
	while(1){
 		input = getchar();
		printf("In state %d\n", state);
		switch(state){
		case 1:
			if(input == 'a'){
				state = 2;
			}else{
				state = 4; //other
			}
			break;
		case 2:
			if(input == 'a'){
				state = 3;
			}
			else if(input == 'b'){
				state = 1;
			}
			else{
				state = 4; //other
			}
			break;
		case 3:
			return 0; // exited succesfull
			break;
		case 4:
			return 1; // other input than a/b
			break;

		}
		
	};
}
