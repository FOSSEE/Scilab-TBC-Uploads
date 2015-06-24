clc 
// Given that
k = 16 // stiffness constant of spring n/m
m = 1 // mass of particle in kg
// Sample Problem 7 on page no. 7.24
printf("\n # PROBLEM 7 # \n")
n = sqrt(k / m) / (2 * %pi)
printf("\n Standard formula used \n n = sqrt(k / m) / (2 * pi).\n")
printf("\n natural frequency = %f Hz.",n)
