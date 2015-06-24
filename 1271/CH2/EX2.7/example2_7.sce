clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
f = 0.2 // focal length of convex lens in meter
n = 10 // no. of half period zone
// Sample Problem 7 on page no. 2.40
printf("\n # PROBLEM 7 # \n")
Rn = sqrt(n * lambda * f) // calculation for radius of 10th half period zone
printf("\n Standard formula used \n Rn = sqrt(n * lambda * f).\n")
printf("\n Radius of 10th half period zone = %f mm. ",Rn*1000)
