clc 
// Given that
lambda = 1.2e-10 // DE Broglie wavelength in m
c = 3e8 // velocity of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of electron in kg
// Sample Problem 47 on page no. 14.40
printf("\n # PROBLEM 47 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(m*v)\n")
v1 = h / (m * lambda)
v2 = h / (2 * m * lambda)
printf("\n Group velocity is %e m/sec.\n Phase velocity is %e m/sec.",v1,v2)
                                                               
