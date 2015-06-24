clc 
// Given that
t = 10^-8 // life time of atom in exited state in sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 12 on page no. 15.28
printf("\n # PROBLEM 12 # \n")
printf("Standard formula used \n")
printf(" del_E*del_t = h/(4*pi) \n")
delta_f = 1 / (4 * %pi * t)
printf("\n Minimum uncertainty in frequency is %e Hz.",delta_f)
