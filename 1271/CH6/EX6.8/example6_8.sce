clc 
// Given that
M = 6.68e-27 // mass of helium ion in kg
E = 1.6e-16 // energy of helium ion in J
B = 5e-2 // magnetic field in tesla
e = 1.6e-19 // charge on helium ion in coulomb
// Sample Problem 8 on page no. 6.23
printf("\n # PROBLEM 8 # \n")
v = sqrt((2 * E) / M)//calculation for velocity
r = (M * v) / (e * B)//calculation for Larmour radius
A = %pi * r^2//calculation for area traced by the trajectory of helium ion
printf("Standard formula used \n E=1/2*m*v^2,\n Rl=m*v/(e*B),\n A=pi*r^2\n")
printf("\n Area traced by the trajectory of helium ion = %f square meter",A)
