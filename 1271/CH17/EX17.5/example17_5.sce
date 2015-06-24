clc 
// Given that 
n = 5e28 // no. of atoms in per m^3
e = 1.6e-19 // charge on an electron in C
// Sample Problem 5 on page no. 17.20
printf("\n # PROBLEM 5 # \n")
printf("Standard formula used \n")
printf("R_h = 1/(n*e) \n")
R = -(1 / (n * e))
printf("\n Hall coefficient is %e m^3/C.",R)
