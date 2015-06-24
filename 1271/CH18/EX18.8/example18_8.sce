clc 
// Given that 
r = 0.6e-10 // radius of the atom
N = 28e26 // no. of electron in per m^3
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
Z = 2 // atomic no. of helium
m = 9.1e-31 // mass of an electron in kg
e = 1.6e-19 // charge on an electron in C
// Sample Problem 8 on page no. 18.24
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n ")
printf("  Chi = mu_0*Z*e^2 *N*R^2 /(6*m) \n")
Chi = -(mu_ * Z * N * r^2 * e^2) / (6 * m)
printf("\n Diamagnetic susceptibility is %e .",Chi)
