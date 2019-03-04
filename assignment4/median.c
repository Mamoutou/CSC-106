//March 3rd 2016
//Mamoutou Sangare V00010526
//This program takes three integer inputs;it prints them and the median number
#include<stdio.h>

int main(){
	
  int x, y,z, median;
  printf("Enter The first number: ");
  scanf("%d",&x);
  printf("Enter the second number: ");
  scanf("%d",&y);
  printf("Enter the third number: ");
  scanf("%d",&z);
  printf(" The three numbers entered: %d %d %d\n", x, y, z);
  printf("");
  median = findMedianVal(x,y,z);
  printf("The median:%d\n", median);	
  return 0;
}
int findMedianVal (int num1,int num2,int num3){

	  if ((num1 - num2) * (num3 - num1) >= 0) {
        return num1;
    } else if ((num2 - num1) * (num3 - num2) >= 0) {
        return num2;
    } else {
        return num3;
    }
}
