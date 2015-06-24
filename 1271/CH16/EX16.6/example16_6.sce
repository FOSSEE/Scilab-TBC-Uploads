clc 
// Given that 
a = 4e-10 // lattice constant in mr
t = 0 // temperature in K
N = 6.02e23 // Avogadro no. in per kg
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 6 on page no. 16.16
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n")
printf("E = (h^2 / (8 * pi^2 * m)) * (3 * pi^2 * N/V)^(2/3) \n")
V = a^3
n = 4 / V 
E = (h^2 / (8 * %pi^2 * m)) * (3 * %pi^2 * n)^(2/3) * (1 / e)
k = (3 * %pi^2 *n)^(1/3)
KE = (3 * E / 5) * (n)
printf("\n Fermi energy is %f eV.\n Fermi vector is %e per m.\n Total kinetic energy is %e eV.",E,k,KE)
