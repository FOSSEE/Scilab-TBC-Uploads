clc 
// Given that 
delta_x = 1e-10 // error in position in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 5 on page no. 15.26
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n")
delta_p = h / (4 * %pi * delta_x)
printf("\n Uncertainty in momentum is %e kg m/sec.",delta_p)
