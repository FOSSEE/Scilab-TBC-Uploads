//Chapter 1, Example 1.2, Page 22
clc
clear
//Find number of 10B molecules in 5g of Boron
m = 5 //g
Na = 0.6022*10**24 //atoms/mol
AB = 10.811 //Atomic weight of 10B , g/mol
NB = (m*Na)/(AB)
printf("The number of Boron atoms = %e atoms",NB);

//Answers may vary due to round off error
