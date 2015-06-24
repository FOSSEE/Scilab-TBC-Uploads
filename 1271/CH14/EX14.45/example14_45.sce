clc 
// Given that
t = 300 // temperature in K
k = 1.376e-23 // Boltzmann's constant in J/K
c = 3e8 // velocity of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m_ = 4 * 1.67e-27 // mass of helium atom in kg
m = 1.67e-27 // mass of hydrogen atom in kg
// Sample Problem 45 on page no. 14.39
printf("\n # PROBLEM 45 # \n")
printf("Standard formula used \n ")
printf(" lambda = h/(3*m*k*T)^1/2\n")
lambda1 = h / sqrt(3 * m * k * t)
lambda2 = h / sqrt(3 * m_ * k * t)
r = lambda1 / lambda2
printf("\n Ratio of de-Broglie wavelengths is %d .",r)
                                                               
