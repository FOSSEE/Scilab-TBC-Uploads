//Example number 6.10, Page number 6.50

clc;clear;close

// variable declaration
n=4     // unitless
M=58.5                  // Molecular wt. of NaCl
N=6.02*10^26           // Avagadro number
rho=2180                // density

// Calculations
a=((n*M)/(N*rho))^(1/3)   // in m
s=a/2 // in m

// Result
printf("a= %.3e m",a)
printf("\nspacing between the nearest neighbouring ions = %.4f nm",(s/10^-9))
