clc 
// Given that
v = 5e3 // speed of electron in m/sec
a = 0.003 // percentage accuracy in measurement of speed 
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 8 on page no. 15.27
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n")
delta_v = v * a / 100
delta_p = m * delta_v
delta_x = h / (4 * %pi * delta_p)
printf("\n Uncertainty in determining the position of electron is %e m.",delta_x)
