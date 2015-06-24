clc 
// Given that 
E = 0.3 // Fermi energy in eV
T = 330 // temperature in K
t = 300 // room temperature in K
k = 1.37e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
// Sample Problem 3 on page no. 17.19
printf("\n # PROBLEM 3 # \n")
printf("Standard formula used \n")
printf("n_c = n_d * e^(E_f-E_c)/kT \n")
d = (T / t) * (E)
printf("\n New position of fermi level is %f eV.",d)
