clc 
// Given that
lambda = 5.893e-7 // wavelength of light in meter
f = 1 // focal-length of convex lens in meter
n1 = 1 // no. of first half period zone
n2 = 3 // no. of second half period zone
n3 = 5 // no. of third half period zone
// Sample Problem 6 on page no. 2.40
printf("\n # PROBLEM 6 # \n")
R1 = sqrt(n1 * lambda * f) // calculation for Radius of first half period zone
R2 = sqrt(n2 * lambda * f) // calculation for Radius of second half period zone
R3 = sqrt(n3 * lambda * f) // calculation for Radius of third half period zone
printf("Standard formula used \n R = sqrt(f*n*lambda)\n")
printf("\n Radius of first ,second and third half period zone = %e,%e and %e meter. ",R1,R2,R3)
