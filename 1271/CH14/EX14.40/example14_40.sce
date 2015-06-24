clc 
// Given that
E = 20 // kinetic energy of proton in MeV
E2 = 510 // kinetic energy of neutron in second case in eV
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of proton in kg
m_ = 9.1e-31 // mass of electron in kg
// Sample Problem 40 on page no. 14.37
printf("\n # PROBLEM 40 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(2*m*E)^1/2\n")
lambda1 = h / sqrt(2 * m * 10^6 * E * e)
lambda2 = h / sqrt(2 * m_ * E * 10^6 * e)
r = lambda2 / lambda1
printf("\n Ratio of de-Broglie wavelengths is %f.",r)
                                                               
