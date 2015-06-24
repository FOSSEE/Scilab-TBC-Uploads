clc 
// Given that 
M = 5.4e-26 // momentum of electron in kg-m/sec
p = 0.05 // percentage accuracy in momentum
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 6 on page no. 15.26
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n")
delta_m = p * M / 100
delta_x = h / (4 * %pi * delta_m)
printf("\n Uncertainty in position is %f micrometre.",delta_x * 10^6)
