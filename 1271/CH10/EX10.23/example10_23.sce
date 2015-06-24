clc 
// Given that
q = 1.5e-6 // charge in C
v = 30 // potential of a surface in V
e0 = 8.85e-12 // permittivity of space
// Sample Problem 23 on page no. 10.45
printf("\n # PROBLEM 23 # \n")
r = (1 / (4 * %pi * e0)) * (q / v)
printf("Standard formula used \n v = (1/(4*pi*e_)*(q/r)).\n")
printf(" Radius of equipotential surface = %d m.",ceil(r))
