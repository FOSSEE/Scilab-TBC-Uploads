clc 
// Given that
w = 60.2 // molecular weight
d = 6250 // density in kg/m^3
N = 6.023e+26 // Avogadro's no. in per kg mole
n = 4 // for fcc lattice
// Sample Problem 12 on page no. 13.28
printf("\n # PROBLEM 12 # \n")
printf("Standard formula used \n")
printf(" a = (((4 * w) / (N * d))^(1 / 3)) \n")
a = (((4 * w) / (N * d))^(1 / 3)) * 1e10
printf("\n Lattice constant is %f angstrom.",a)
                                                               
