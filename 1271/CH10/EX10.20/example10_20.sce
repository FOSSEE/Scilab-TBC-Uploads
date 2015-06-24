clc 
// Given that
q = 1.6e-19 // charge on a proton in C
d = 1e-10 // distance of a point from proton in m
e0 = 8.85e-12 // permittivity of space
// Sample Problem 20 on page no. 10.44
printf("\n # PROBLEM 20 # \n")
E = (1 / (4 * %pi * e0)) * (q / d^2)
printf("Standard formula used \n E = (1 / (4 * pi * e0)) * (q / d^2).\n")
printf(" Electric field = %e V/m.",E)
