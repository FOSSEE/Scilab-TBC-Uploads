clc 
// Given that 
N = 6.5e25 // no. of atom per m^3
T = 300 // room temperature in K
mu_ = 4 * %pi * 1e-7 // magnetic permittivity of space
k = 1.38e-23 // Boltzmann's constant in J/K
m = 9.1e-31 // mass of electron in kg
e = 1.6e-19 // charge in an electron in C
h = 6.62e-34 // Planck constant in J sec
// Sample Problem 13 on page no. 18.25
printf("\n # PROBLEM 13 # \n")
printf("Standard formula used \n ")
printf("  Chi = mu_0*N*M^2 /(3*k*t) \n")
M = (e * h) / (4 * %pi * m)
X = (mu_ * N * M^2) / (3 * k * T)
printf("\n Susceptibility is %e",X)
