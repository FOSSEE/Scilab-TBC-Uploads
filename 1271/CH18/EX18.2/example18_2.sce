clc 
// Given that 
X = -4.2e-6 // magnetic susceptibility
H = 1.19e5 // magnetic field in A/m
mu_ = 4 * %pi * 1e-7 // magnetic permeability of space
// Sample Problem 2 on page no. 18.21
printf("\n # PROBLEM 2 # \n")
printf("Standard formula used \n ")
printf(" I = cai*H  \n")
I = X * H
B = mu_ * (H + I)
mur = (1 + I/H)
printf("\n Magnetisation is %f A/m.\n Flux density is %f T.\n Relative permeability is %f .",I,B,mur)
