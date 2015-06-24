clc 
// Given that 
n = 5e22 // no. of atoms per m^3
t = 300 // room temperature in K
k = 1.37e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 2 on page no. 17.19
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n")
printf("n_c = 2*(2*pi*m*k*T/h^2)^(3/2) * e^(E_f-E_c)/kT \n")
d = (k * t) * log(n * h^3 / (2 * (2 * %pi * m * k * t)^(3/2)))
printf("\n Position of fermi level is %f eV.",-d/e)
