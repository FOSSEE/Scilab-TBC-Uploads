clc 
// Given that
a = 250 // area of the B-H loop in J/m^3
f = 50 // frequency in Hz
d = 7.5e3 // density of iron in kg/m^3
m = 100 // mass of core in kg
// Sample Problem 20 on page no. 18.28
printf("\n # PROBLEM 20 # \n")
printf("Standard formula used \n ")
printf(" M = V*d \n")
V = m / d
n = 3600 * f
A = a * V * n
printf("\n Energy loss per hour is %e J.",A)
