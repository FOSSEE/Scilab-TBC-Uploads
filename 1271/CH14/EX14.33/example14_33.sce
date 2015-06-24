clc 
// Given that
lambda = 0.1e-10 // DE Broglie wavelength associated with electron in M
h = 6.62e-34 // Planck constant in J-sec
e = 1.6e-19 // charge on an electron in C 
m = 9.1e-31 // mass of electron in kg
// Sample Problem 33 on page no. 14.34
printf("\n # PROBLEM 33 # \n")
printf("Standard formula used \n ")
printf(" lambda = h /(m*v)\n 1/2*m*v^2 = qV \n")
V = h^2 / (2 * m* e * lambda^2)
printf("\n Potential difference is %f KV.",V * 10^-3)
