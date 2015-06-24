clc 
// Given that 
a = 4.28e-10 // cell side of Na in m
e = 1.6e-19 // charge on an electron in C
// Sample Problem 6 on page no. 17.20
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n")
printf("R_h = 1/(n*e) \n")
n = (2 / a^3)
R = -(1 / (n * e))
printf("\n Hall coefficient is %e m^3/C.",R)
