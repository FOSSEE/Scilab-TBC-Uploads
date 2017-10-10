//Chapter 1, Example 1.1, Page 21
clc
clear
//Find Atomic weight of Boron
I10 = 0.199 // Isotopic abundance of B10 (Value used in question is wrong)
A10 = 10.012937 //Atomic weight of B10
I11 = 0.801 // Isotopic abundance of B11
A11 = 11.009306 //Atomic weight of B11
//Calculation
W = (I10*A10)+(I11*A11)
printf("The atomic weight of Boron = %f",W);

//Answers may vary due to round off error
