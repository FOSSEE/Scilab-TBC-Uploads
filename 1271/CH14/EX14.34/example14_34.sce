clc 
// Given that
v = 200 // potential differece in volt
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
q = 3.2e-19 // charge on an alpha particle in C 
m = 4 * 1.67e-27 // mass of alpha particle in kg
// Sample Problem 34 on page no. 14.34
printf("\n # PROBLEM 34 # \n")
printf("Standerd formula used \n ")
printf(" lambda = h /(m*v)\n 1/2*m*v^2 = qV \n")
lambda =  h  / sqrt(2 * m * v * q)
printf("\n de-Broglie wavelength = %e m.",lambda)
                                                               
