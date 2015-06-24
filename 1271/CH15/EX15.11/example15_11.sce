clc 
// Given that
t = 2.5e-14 // life time of hydrogen atom in exited state in sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 11 on page no. 15.28
printf("\n # PROBLEM 11 # \n")
printf("Standard formula used \n")
printf(" del_E*del_t = h/(4*pi) \n")
delta_E = h / (4 * %pi * t)
printf("\n Minimum error in measurement of the energy is %e J.",delta_E)
