// Scilab Code Ex3.8 : Page:136 (2011) 
clc;clear;
g1 = 3; // Number of cells in first compartment
g2 = 4; // Number of cells in second compartment
k = 2;  // Number of compartments
n1 = 5; // Number of bosons
n2 = 0; // Number of with no bosons
W_50 = factorial(g1+n1-1)*factorial(g2+n2-1)/(factorial(n1)*factorial(g1-1)*factorial(n2)*factorial(g2-1));
printf("\nThe probability for the macrostate (5,0) is = %2d", W_50); 

// Result
// The probability for the macrostate (5,0) is = 21 
