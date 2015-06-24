clc 
// Given that 
r = 0.53e-10 // radius of orbit in m
f = 6.6e15 // frequency of revolution in Hz
h = 6.6e-34 // Planck constant in J sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 1 on page no. 18.21
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n ")
printf(" M = I*a \n")
M = e * f * %pi * r^2
mu = (e * h) / (4 * %pi * m) 
printf("\n Magnetic moment is %e Am^2.\n Bohr magneton is %e J/T.",M,mu)
