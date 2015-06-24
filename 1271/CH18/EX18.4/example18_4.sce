clc 
// Given that 
X = -0.4e-5 // magnetic susceptibility of material
H = 1e4 // magnetic field in A/m
mu_ = 4 * %pi * 1e-7 // magnetic permittivity of space
// Sample Problem 4 on page no. 18.22
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n ")
printf(" I = Chi *H \n")
I = X * H
B = mu_ * (H + I)
printf("\n Magnetisation is %f A/m.\n Magnetic flux density is %f T.",I,B)
