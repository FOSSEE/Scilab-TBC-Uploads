clc 
// Given that
l = 1e-14 // width of box in m
e = 1.6e-19 // charge on an electron in C
m = 1.67e-27 // mass of neutron in kg
c = 3e8 // speed of light in m/sec
h = 6.62e-34 // Planck constant in J-sec
// Sample Problem 18 on page no. 15.31
printf("\n # PROBLEM 18 # \n")
printf("Standard formula used \n")
printf(" E = (n^2 * h^2) / (8 * m * L^2)) \n")
n = 1 // for n=1
E = (n^2 * h^2) / (8 * m * l^2)
printf("\n Lowest energy of neutron confined in the nucleus is %e J.",E)
