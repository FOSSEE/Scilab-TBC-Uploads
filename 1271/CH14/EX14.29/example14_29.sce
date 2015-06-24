clc 
// Given that
h = 6.62e-34 // Planck constant in J-sec
v = 96 // speed of automobile in km/hr
e = 1.6e-19 // charge on an electron in C 
m = 2e3 // mass of automobile in kg
// Sample Problem 29 on page no. 14.33
printf("\n # PROBLEM 29 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n")
v_ = v * (5 / 18)
lambda = h / (m * v_)
printf("\n de-Broglie wavelength is %e m.",lambda)
                                                               
