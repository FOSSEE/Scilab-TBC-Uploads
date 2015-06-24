clc 
// Given that
t = 400 // temperature in K
k = 1.38e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 4 * 1.67e-27 // mass of helium atom in kg
// Sample Problem 35 on page no. 14.34
printf("\n # PROBLEM 35 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n 1/2*m*v^2 = 3/2*k*T \n")
lambda = h / sqrt(3 * m * k * t)
printf("\n de-Broglie wavelength = %f Angstrom.",lambda * 1e10)
                                                               
