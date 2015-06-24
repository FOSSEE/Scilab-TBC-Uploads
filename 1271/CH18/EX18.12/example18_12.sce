clc 
// Given that 
X = -5.6e-6 // magnetic susceptibility of material
a = 2.55e-10 // lattice constant in m
H = 1e4 // magnetic field in A/m
mu_ = 4 * %pi * 1e-7 // magnetic permittivity of space
m = 9.1e-31 // mass of electron in kg
e = 1.6e-19 // charge in an electron in C
// Sample Problem 12 on page no. 18.25
printf("\n # PROBLEM 12 # \n")
printf("Standard formula used \n ")
printf("  Chi = mu_0*Z*e^2 *N*R^2 /(6*m) \n")
N = 2 / a^3
z = 1 
R = ((-X * 6 * m) / (mu_ * z * e^2 * N))^(1/2)
printf("\n Radius of  atom is %f A.",R * 1e10)
