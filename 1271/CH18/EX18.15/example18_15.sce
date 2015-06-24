clc 
// Given that
A = 2500 // area of hysteresis loop 
m = 10000 // weight in kg
d = 7.5 // density of material in g/cm^3
f = 50 // frequency in Hz
// Sample Problem 15 on page no. 18.26
printf("\n # PROBLEM 15 # \n")
printf("Standard formula used \n ")
printf("  M = V*d \n")
E = f * A * 3600
V = m / d
L = E * V
printf("\n Total loss of energy per hour is %e ergs.",L)
