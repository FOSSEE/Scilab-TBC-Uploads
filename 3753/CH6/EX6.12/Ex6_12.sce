//Example number 6.12, Page number 6.51

clc;clear;close

// variable declaration
r=0.123                  // Atomic radius
n=4
A=55.8                   // Atomic wt
a=2*sqrt(2) 
N=6.02*10**26           // Avagadro number

// Calculations
rho=(n*A)/((a*r*10**-9)**3*N) // kg/m^3

// Result
printf("Density of iron = %.f kg/m^-3",rho)
