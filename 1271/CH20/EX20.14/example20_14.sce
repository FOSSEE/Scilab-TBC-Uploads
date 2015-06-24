clc 
// Given that
Z = 92 // atomic no. of atom
Rh = 1.1e5 // Rydberg constant in cm^-1
c = 3e8 // speed of light in m/sec
// Sample Problem 14 on page no. 20.11
printf("\n # PROBLEM 14 # \n")
printf("Standard formula used \n ")
printf(" Moseley Law \n ")
lambda = 1 / (Rh *(Z-1)^2 * (1 - (1 / 2^2)))
printf("\n Wavelength of K line = %f A",lambda*1e8)
