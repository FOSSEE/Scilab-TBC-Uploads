//Example number 6.11, Page number 6.51

clc;clear;close

// variable declaration
n=4     // unitless
A=63.55                 // Atomic wt. of NaCl
N=6.02*10^26           // Avagadro number
rho=8930                // density

// Calculations
a=((n*A)/(N*rho))^(1/3)      // Lattice Constant

// Result
printf("lattice constant, a = %.2f nm",(a*10^9))
