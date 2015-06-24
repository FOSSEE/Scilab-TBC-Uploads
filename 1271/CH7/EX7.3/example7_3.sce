clc 
// Given that
E = 9 // total energy of particle in J
U = 5 // potential energy in J
A = 1 // amplitude in meter
m = 2 // mass of harmonic oscillator in kg
// Sample Problem 3 on page no. 7.23
printf("\n # PROBLEM 3 # \n")
kE = E - U// calculation for kinetic energy
k = (2 * kE) / A^2// calculation for force constant
T = (2 * %pi) * sqrt(m / k)// calculation for time period
printf("Standard formula used \n k.E.=1/2*k*A^2,\n T=2*pi*sqrt(m/k)\n")
printf("\n Force constant = %f J/m,\n Time period = %f sec",k,T)
