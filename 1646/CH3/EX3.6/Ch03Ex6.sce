// Scilab Code Ex3.6: Page:135 (2011) 
clc;clear;
g1 = 4;     // Intrinsic probability of first cell
g2 = 2;     // Intrinsic probability of second cell
k = 2;      // Number of cells 
n = 8;     // Number of distinguishable particles
n1 = 8;     // Number of cells in first compartment
n2 = n - n1;     // Number of cells in second compartment
W = factorial(n)*1/factorial(n1)*1/factorial(n2)*(g1)^n1*(g2)^n2;
printf("\nThe thermodynamic probability of the macrostate (8,0) = %5d", W); 

// Result
// The thermodynamic probability of the macrostate (8,0) = 65536 


