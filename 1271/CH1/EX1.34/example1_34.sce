clc 
// Given That
d1 = 5.9e-3 // diameter of 15th ring in meter
d2 = 3.36e-3 // diameter of 5th ring in meter
R = 1 // redius of the plano-convex lens in meter
// Sample Problem 34 on page no. 1.52
printf("\n # PROBLEM 34 # \n") 
p = 15 - 5
lambda = ((d1^2) - (d2^2)) / (4 * p * R) // calculation for wavelength of light
printf("\n Standard formula used \n lambda = (d1^2-d2^2)/(4*p*R).\n")
printf("\n Wavelength of light = %f A.",lambda*1e10)
