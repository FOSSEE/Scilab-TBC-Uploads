clc 
// Given That
lambda1 = 6e-7 // wavelength of first light in meter
lambda2 = 4.8e-7 // wavelength of second light in meter
r = 0.96 // radius of curvature of curved surface of lens in meter
// Sample Problem 37 on page no. 1.53
printf("\n # PROBLEM 37 # \n") 
n = lambda2 / (lambda1 - lambda2) // calculation for order of fringe
D = sqrt(4 * (n + 1) * lambda2 * r) // calculation for diameter of ring
printf("\n Standard formula used \n n^2 = 4n*lambda*R. \n")
printf("\n Diameter of (n +1)th dark ring of lambda2. = %e meter.",D)
