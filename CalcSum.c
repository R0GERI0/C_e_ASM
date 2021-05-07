//CalcSumTest.cpp
/*
int CalcSum_(int a, int b, int c)
{
	return a+b+c;
}
*/

#include <stdio.h>

extern int CalcSum(int a, int b, int c);

void main(void)
{
    int a = 17, b = 11, c = 14;
    int sum = CalcSum(a, b, c);
 
    printf("  a:   %d\n", a);
    printf("  b:   %d\n", b);
    printf("  c:   %d\n", c);
    printf("  sum: %d\n", sum);
}