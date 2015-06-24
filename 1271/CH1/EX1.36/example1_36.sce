clc 
// Given That
lambda = 5.896e-7 // wavelength of light in meter
f = 1 // focal length of the plano-convex lens in meter
mu = 1.5 // refractive index of lens 
n = 7 // no. of bright ring
// Sample Problem 36 on page no. 1.53
printf("\n # PROBLEM 36 # \n") 
p = 20 - 10
R = (f * (mu - 1)) * 2 // calculation for radius of lens
D = sqrt(4 * n * lambda * R) // calculation for diameter of 7th ring 
printf("\n Standard formula used \n Dn^2 = 4n*lambda*R. \n")
printf("\n Diameter of 7th bright ring = %e meter.",D)
