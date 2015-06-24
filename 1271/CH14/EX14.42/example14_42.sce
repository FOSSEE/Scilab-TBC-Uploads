clc 
// Given that
r = 1 / 20 // ratio of velocity of proton to the velocity of light 
c = 3e8 // velocity of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of proton in kg
// Sample Problem 42 on page no. 14.38
printf("\n # PROBLEM 42 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(m*v)\n")
v = r * c
lambda = h / (m * v)
printf("\n de-Broglie wavelength is %e m.",lambda)
                                                               
