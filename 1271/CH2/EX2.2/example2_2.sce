clc 
// Given that
lambda = 6e-7 // wavelength of light in meter
f = 0.6 // focal length of convex lens in meter
n = 1 // no. of half period zone
// Sample Problem 2 on page no. 2.38
printf("\n # PROBLEM 2 # \n")
Rn = sqrt(n * lambda * f)// calculation for radius of half period zone
printf("Standard formula used \n f = Rn^2/(n*lambda)\n")
printf("\n Radius of  half period zone = %f mm ",Rn*1000)
