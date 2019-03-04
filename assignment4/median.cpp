// March 3rd 2016
// Mamoutou Sangare V00010526
// This program takes three integer inputs;it prints them and the median number
#include <iostream>
using namespace std;

int getMedian(int x, int y, int z);
int main()
{
  int median;
  int number1, number2, number3;
  cout << "Enter the First number: ";
  cin >> number1;
  cout << "Enter the Second number: ";
  cin >> number2;
  cout << "Enter the Third number: ";
  cin >> number3;
  cout << "The three numbers entered: " << number1 << " " << number2<<  " " << number3 <<endl;
  
  median = getMedian (number1,number2,number3);
  cout << "Median : " << median << endl;
  return 0;
}
int getMedian(int x, int y, int z) 
{
   if (x < y){
        if (y < z)
            return y;
        else if (x < z)
            return z;
		       else
            return x;
   } else {
        if (x < z)
            return x;
        else if ( y > z)
            return y;
        else
            return z;
   }
}
