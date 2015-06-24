clc 
// Given that 
E = 1000 // energy of electron in eV
delta_x = 1e-10 // error in position in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 1 on page no. 15.24
printf("\n # PROBLEM 1 # \n")
printf("Standard formula used \n")
printf(" p = (2 * m * E * e)^(1/2) \n")
p = sqrt(2 * m * E * e)
delta_p = h / (4 * %pi * delta_x)
P = (delta_p / p) * 100
printf("\n Percentage of uncertainty in momentum is %f.",P)
