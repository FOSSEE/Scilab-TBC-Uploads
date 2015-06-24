clc 
// Given that 
r = 0.53e-10 // radius of hydrogen atom in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 7 on page no. 15.27
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n p = (2 * m * E * e)^(1/2) \n")
delta_M = h / (4 * %pi * r)
delta_k = delta_M^2 / (2 * m)
printf("\n Minimum energy of electron is %e J.",delta_k)
