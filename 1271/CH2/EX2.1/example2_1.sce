clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
d = 1 // distance of wavefront received on the screen from the opening in meter
n = 80 // no. of half period zone
// Sample Problem 1 on page no. 2.38
printf("\n # PROBLEM 1 # \n")
Rn = sqrt(n * lambda * d)// calculation for radius of nth half period zone
A = %pi * d * lambda// calculation for area of half period zone
printf("Standard formula used\n Rn = sqrt(n*d*lambda).\n A = pi*d*lambda.\n")
printf("\n Radius of 80th half period zone = %f cm. \n Area of half period zone = %f square cm.",Rn*100,A*10000)
