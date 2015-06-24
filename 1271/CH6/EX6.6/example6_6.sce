clc 
// Given that
M = 9.1e-31 // mass of electron in kg
E = 1.6e-15 // energy of electron in J
B = 5e-5 // magnetic field in tesla
e = 1.6e-19 // charge on an electron in coulomb
// Sample Problem 6 on page no. 6.23
printf("\n # PROBLEM 6 # \n")
v = sqrt((2 * E) / M)
r = (M * v) / (e * B)
printf("\n Standard formula used \n v = sqrt((2 * E) / M). \n r = (M * v) / (e * B). \n")
printf("\n Larmoure radius = %f meter",r)
