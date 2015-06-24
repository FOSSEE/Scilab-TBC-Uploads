clc 
// Given that
E1 = 500 // kinetic energy of electron in first case in eV
E2 = 50 // kinetic energy of electron in second case in eV
E3 = 1 // kinetic energy of electron in third case in eV
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of electron in kg
// Sample Problem 38 on page no. 14.36
printf("\n # PROBLEM 38 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(2*m*E)^1/2.\n")
lambda1 = h / sqrt(2 * m * E1 * e)
lambda2 = h / sqrt(2 * m * E2 * e)
lambda3 = h / sqrt(2 * m * E3 * e)
printf("\n de-Broglie wavelength of electron - (1) In first case is %f A. \n (2) In second case is %f A. \n (3) In third is %f A.",lambda1*1e10,lambda2*1e10,lambda3*1e10)
                                                               
