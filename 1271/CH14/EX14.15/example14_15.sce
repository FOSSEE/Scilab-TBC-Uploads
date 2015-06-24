clc 
// Given that
lambda = 5.89e-7 // wavelength of light in meter
lambda_ = 7.32e-7 // threshold wavelength of photoelectron in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 15 on page no. 14.25
printf("\n # PROBLEM 15 # \n")
printf("Standard formula used \n ")
printf(" E = (h * c) * (1 / lambda1 - 1 / lambda2) \n")
E = (h * c) * (1 / lambda - 1 / lambda_)
V = E / e
printf("\n Stopping potential is %f V.\n Maximum kinetic energy is %e J.",V,E)
                                                               
