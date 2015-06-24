clc 
// Given that
d = 0.9e-3 // diameter of aluminium in m
i = 6 // current in amp
n = 4.5e28 // no. of electron available for conduction per meter^3 
e =  1.6e-19 // charge on an electron in C
// Sample Problem 7 on page no. 16.17
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n")
printf("J = I*A \n v_d = J/ne \n")
J = i * 4 / (%pi * (d)^2)
v = J / (n * e)
printf("\n Drift velocity of electron is %e m/sec.",v)
