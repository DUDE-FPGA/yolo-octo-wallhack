#include <stdio.h>
#include <stdlib.h>

int main()
{
	int input_ascii;
	int output_bcd = 0b1010;
	//output_bcd = ~output_bcd;
	printf("%d\n",output_bcd);
	printf("%d\n",output_bcd & 0b0000);
	return 0;
}
