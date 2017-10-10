clc
// Given that
p = 1.013e5 // Pressure in Pa
t = 300 // Temperature in K
d = 3.5 // Effective diameter of oxygen molecule in Angstrom 
r = 2 // Ratio of free path of molecules with the lambda
printf("\n Example 22.1 \n")
sigma = %pi*(d*(10^-10))^2
n = p/(t*1.38*(10^-23))
lambda = 0.707/(sigma*n)
R = exp(-r)
printf("\n Mean free path = %e m,\n The fraction of molecules have free path longer than 2*lambda = %f percent",lambda,R*100)
// Answer given in the book contain round off error for mean free path.

