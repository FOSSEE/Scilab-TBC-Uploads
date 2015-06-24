
clc 
// Given That
d1 = 2e-3 // diameter of 10th ring in meter
d2 = 3e-3 // diameter of 20th ring in meter
f = 0.9 // focal length of the plano-convex lens in meter
mu = 1.5 // refractive index of lens
// Sample Problem 35 on page no. 1.52
printf("\n # PROBLEM 35 # \n") 
p = 20 - 10
R = (f * (mu - 1)) // calculation for radius of convex surface of lens
lambda = ((d2^2) - (d1^2)) / (4 * p * R)
printf("\n Standard formula used \n lambda = ((d2^2) - (d1^2)) / (4 * p * R).\n")
printf("\n Wavelength of light = %f nm.",lambda*1e9)
//Answer in the book:2777 nm
//Answer in the program:277.77778 nm

