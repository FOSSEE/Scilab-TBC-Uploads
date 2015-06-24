clc 
// Given that 
d = 10.5e6 // density of silver in g/m^3
w = 108 // atomic weight of silver
t = 0 // temperature in K
N = 6.02e23 // Avogadro no. in per kg
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 5 on page no. 16.16
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n")
printf("E = (h^2 / (8 * pi^2 * m)) * (3 * pi^2 * N/V)^(2/3) \n")
V = w / d
n = N / V 
E = (h^2 / (8 * %pi^2 * m)) * (3 * %pi^2 * n)^(2/3) * (1 / e)
printf("\n Fermi energy is %f eV.",E)
