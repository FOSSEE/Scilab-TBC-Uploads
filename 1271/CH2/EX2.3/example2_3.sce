clc 
// Given that
lambda = 5e-7 // wavelength of light in meter
d = 0.3 // distance of wavefront received on screen from the opening in meter
// Sample Problem 3 on page no. 2.38
printf("\n # PROBLEM 3 # \n")
n = 1 // no. of half period zone
Rn = sqrt(n * lambda * d) // because at maxima intensity is four time the individual intensity of light
printf("Standard formula used \n r = sqrt(d*lambda)\n")
printf("\n Radius of 80th half period zone = %f mm. ",Rn*1000)
