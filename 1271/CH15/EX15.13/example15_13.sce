clc 
// Given that
delta_x = 20e-10 // uncertainty in position in m
e = 1.6e-19 // charge on an electron in C
m = 9.1e-31 // mass of electron in kg
m_ = 1.67e-27 // mass of proton in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 13 on page no. 15.29
printf("\n # PROBLEM 13 # \n")
printf("Standard formula used \n")
printf(" del_x*del_p = h/(4*pi) \n")
delta_v1 = h / (4 * %pi * m * delta_x)
delta_v2 = h / (4 * %pi * m_ * delta_x)
r = delta_v2 / delta_v1
printf("\n Ratio of uncertainty in velocity of a proton and an electron is %e. ",r)
