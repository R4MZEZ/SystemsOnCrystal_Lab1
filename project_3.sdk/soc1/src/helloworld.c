
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "stdio.h"
#include "string.h"
#include <xuartlite.h>
#include <xparameters.h>
#include "platform.h"
#include "xil_io.h"

#define MAX_LENGHT 128

char line[MAX_LENGHT] = {0};

void display_step(int step){
	switch (step){
		case 0:
			Xil_Out8(0x40000000, 19); // N
			break;
		case 1:
			Xil_Out8(0x40000000, 17); // A
			break;
		case 2:
			Xil_Out8(0x40000000, 0); // B
			break;
	}
}


void calc_result(int* src_matrix, int size){
  int c_temp;

  for(int i = 0; i < size ; i++){
	  for(int j = 0; j < size ; j++){
	      c_temp = 0;
		  for(int r = 0; r < size ; r++){
		      c_temp += src_matrix[i*size + r] * src_matrix[size*size + r*size + j];
		  }
		  printf("%d ", c_temp);
	  }
	  printf("\n");
  }
}



int read_number(){
	size_t pointer = 0;
	char c = '\0';
    int num = 0;
    int mul = 1;

    while (c != '\n' && c != ' '){
    	  scanf("%c", &c);
    	  printf("%c", c);
    	  line[pointer++] = c;
	}

    for (int i = pointer - 2; i >= 0; i--){
        num += (line[i] - '0') * mul;
        mul *= 10;
    }

	memset(line, 0, pointer);
	return num;
}


int main()
{
    init_platform();
	XUartLite uart;
	XUartLite_Initialize(&uart, XPAR_UARTLITE_0_DEVICE_ID);

	int n;
	while(1){

    	printf("Hello, enter N:\n> ");
    	n = read_number();
    	int matrixes [2][n][n];

    	for (size_t step = 0; step < 2; step++){
            printf("Start to enter matrix %zu:\n", step);
            for (size_t i = 0; i < n; i++){
                for (size_t j = 0; j < n; j++){
    			    matrixes[step][i][j] = read_number();
    			}
    		}
    		printf("\n");
    	}

    	calc_result((int*)matrixes, n);

    }

    cleanup_platform();
    return 0;
}
