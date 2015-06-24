clc 
// Given that 
E = 0.7 // band gap for semiconductor in eV
t = 300 // room temperature in K
k = 1.38e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 4 on page no. 17.20
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf("n_c = 2*(2*pi*m*k*T/h^2)^(3/2) * e^(E_f-E_c)/kT \n")
n = 2 * ((2 * %pi * k * t * m) / h^2)^(3/2) * exp(-(E * e / (2 * k * t)))
printf("\n Density of holes and electron is %e per m^3.",n)
