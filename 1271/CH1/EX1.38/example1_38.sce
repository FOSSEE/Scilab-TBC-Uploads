clc 
// Given That
lambda1 = 6e-7 // wavelength of first light in meter
lambda2 = 5.9e-7 // wavelength of second light in meter
r = 0.9 // radius of curvature of curved surface of lens in meter
// Sample Problem 38 on page no. 1.54
printf("\n # PROBLEM 38 # \n") 
n = lambda2 / (lambda1 - lambda2) // calculation for order of ring
D = sqrt(4 * (n + 1) * lambda1 * r) // calculation for diameter of ring
printf("\n Standard formula used \n n^2 = 4n*lambda*R.\n")
printf("\n Diameter of nth dark ring of lambda1 = %f meter.",D)
