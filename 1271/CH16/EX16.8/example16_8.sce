clc 
// Given that 
d = 8.92e3 // density of copper in kg/m^3
i = 5 // current in amp
w = 63.5 // atomic weight of copper
r = 0.7e-3 // radius in meter
N = 6.02e28 // Avogadro no.
e = 1.6e-19 // charge on an electron in C
// Sample Problem 8 on page no. 16.17
printf("\n # PROBLEM 8 # \n")
printf("Standard formula used \n")
printf(" J = I*A \n v_d = J/ne \n")
V = (w / d)
n = N / V 
J = i / (%pi * r^2)
v = J / (n * e)
printf("\n Current density = %e amp/m^2.\n Drift velocity is %e m/sec.",J,v)
