clc 
// Given that
E = 1.5 // maximum energy in eV
lambda_ = 2.3e-7 // threshold wavelength of photoelectron in meter
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of an electron in kg 
// Sample Problem 16 on page no. 14.26
printf("\n # PROBLEM 16 # \n")
printf("Standard formula used \n ")
printf(" E = (h * c) * (1 / lambda1 - 1 / lambda2) \n")
lambda = 1 / ((E * e / (h * c)) + (1 / lambda_))
printf("\n Wavelength of light is %f Angstrom.",lambda * 1e10)
                                                               
