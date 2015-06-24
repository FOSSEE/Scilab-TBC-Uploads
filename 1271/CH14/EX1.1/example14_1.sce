clc 
// Given that
E = 75 // energy of photon in eV
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in J 
// Sample Problem 1 on page no. 14.20
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n")
printf(" E = h*c/lambda \n")
f = E * e / h
lambda = c / f 
printf("\n Frequency is %e Hz.\n Wavelength is %f Angstrom.",f,lambda * 10^10)
                                                               
