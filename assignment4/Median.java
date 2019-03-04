//March 3rd 2016
//Mamoutou Sangare V00010526
//This program takes three integer inputs;it prints them and the median number
import java.util.Arrays;
import java.util.Scanner;

public class Median {
	
    private static Scanner scanner = new Scanner(System.in);
    
	public static void main(String[] args) {
		
		int number1, number2, number3;
		System.out.print("Enter the First Number: ");
		number1 = scanner.nextInt();
		System.out.print("Enter the Second Number: ");
		number2 = scanner.nextInt();
		System.out.print("Enter the Third Number: ");
		number3 = scanner.nextInt();
		System.out.println ("The three numbers entered: " + number1 + " " + number2 + " " + number3);
		int median = findMedianVal(number1,number2,number3);
		System.out.println("The median: " + median);	
	}
	
	private static int findMedianVal (int num1,int num2,int num3){
		int [] array = { num1, num2, num3};
		 Arrays.sort(array);
		 return array[1];   // second element in the array is the median
	}
}
