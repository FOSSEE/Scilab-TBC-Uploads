clc 
// Given that 
l = 1 // length of iron rod in m
a = 4e-4 // area in m^2
mu = 50e-4 // permeability of iron in H/m
Phi = 4e-4 // magnetic flux in Weber
// Sample Problem 10 on page no. 18.24
printf("\n # PROBLEM 10 # \n")
printf("Standard formula used \n ")
printf("B = mu*N*I \n")
B = Phi / a
NI = B / mu
printf("\n Number of ampere turns is %d A/m. ",NI)
