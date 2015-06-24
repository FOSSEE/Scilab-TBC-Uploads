                           //Programming example 2.6
clc
printf("Enter the two integer values to be added:");
printf("\n[Enter the numbers in single line seperated by spaces]");

//enter values in single line seperated by spaces
[num1, num2]=scanf("%d %d");
// "sum" is a keyword hence could not be used. Hence 
Sum=num1+num2;
printf("Addition of %d and %d = %d \n", num1, num2, Sum);
