clc 
// Given that 
d = 8940 // density of copper in kg/m^3
w = 63.55 // atomic weight of copper
t = 0 // temperature in K
N = 6.02e26 // Avogadro no. in per kg
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 4 on page no. 16.15
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n")
printf("1/2 * m*v^2 = E_0 \n ")
printf("E = (h^2 / (8 * pi^2 * m)) * (3 * pi^2 * N/V)^(2/3) \n")
V = w / d
n = N / V 
E = (h^2 / (8 * %pi^2 * m)) * (3 * %pi^2 * n)^(2/3) * (1 / e)
E_ = 3 * E / 5
printf("\n Fermi energy is %f eV.\n Average energy is %f eV.",E,E_)
