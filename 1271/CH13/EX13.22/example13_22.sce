clc 
// Given that
d = 0.32e-9 // equilibrium separation in m
alpha = 1.748 
n = 9
e = 4 // ionization energy in eV
a = -2.16 // electron affinity in eV
// Sample Problem 22 on page no. 13.32
printf("\n # PROBLEM 22 # \n")
printf(" Standard formula used \n")
printf(" E = -((alpha * 1.6e-19) / (4 * pi * 8.85e-12 * d)) * (1 - (1 / n)) \n")
E = -((alpha * 1.6e-19) / (4 * %pi * 8.85e-12 * d)) * (1 - (1 / n))
printf("\n Cohesive energy of Nacl is %f eV.",E)
                                                               
