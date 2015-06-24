clc 
// Given that
E1 = 1 // kinetic energy of neutron in first case in eV
E2 = 510 // kinetic energy of neutron in second case in eV
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of neutron in kg
// Sample Problem 39 on page no. 14.36
printf("\n # PROBLEM 39 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(2*m*E)^1/2\n")
lambda1 = h / sqrt(2 * m * E1 * e)
lambda2 = h / sqrt(2 * m * E2 * e)
r = lambda1 / lambda2
printf("\n Ratio of de-Broglie wavelengths is %f .",r)
                                                               
