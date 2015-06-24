clc 
// Given that
p = 3.8e26 // power radiated by sun in W
r = 7e8 // radius of sun in m
e0 = 8.85e-12 // permittivity of space
// Sample Problem 24 on page no. 10.45
printf("\n # PROBLEM 24 # \n")
s = p / (4 * %pi * r^2)
printf("Standard formula used \n s = p / (4 * pi * r^2).\n")
printf(" The value of poynting vector at the surface of the sun = %e W/m^2.",s)
