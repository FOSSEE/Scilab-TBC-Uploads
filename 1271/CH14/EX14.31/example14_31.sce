clc 
// Given that
t = 300 // temperature in K
k = 1.37e-23 // Boltzmann's constant in J/K
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 1.67e-27 // mass of neutron in kg
// Sample Problem 31 on page no. 14.33
printf("\n # PROBLEM 31 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n 1/2*m*v^2 = 3/2*k*T \n")
lambda = h / sqrt(3 * m * k * t)
printf("\n Wavelength of thermal neutron is %f Angstrom.",lambda * 1e10)
                                                               
