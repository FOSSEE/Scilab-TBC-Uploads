clc 
// Given that
n = 1 // no. of Bohr's orbit of hydrogen atom
c = 3e8 // velocity of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of electron in kg
// Sample Problem 44 on page no. 14.38
printf("\n # PROBLEM 44 # \n")
printf("Standard formula used \n ")
printf(" E = (13.6 / n^2)\n")
E = (13.6 / n^2) * e
lambda = h / sqrt(2 * m * E)
printf("\n de-Broglie wavelength is %f Angstrom.",lambda*1e10)
                                                               
