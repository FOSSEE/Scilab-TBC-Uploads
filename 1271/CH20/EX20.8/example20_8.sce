clc 
// Given that
V = 10e3 // voltage in V
i = 15e-3 // current in amp
e = 1.6e-19 // charge on an electron in C
// Sample Problem 8 on page no. 20.9
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n ")
printf("I = ne \n 1/2*m*v^2 = eV \n")
n = i / e
lambda = 12400 / V 
printf("\n Number of electrons striking the anode per sec is %e.\n Minimum wavelength produced  is %f Angstrom.",n,lambda)
