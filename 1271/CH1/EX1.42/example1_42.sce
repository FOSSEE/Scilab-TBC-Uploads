clc 
// Given That
lambda = 6.3e-7 // wavelength of light in meter
mu = 1.63 // refractive index of liquid 
R = 0.9 // the radius of curvature of convex lens in meter
// Sample Problem 42 on page no. 1.55
printf("\n # PROBLEM 42 # \n") 
r = sqrt(lambda*R/mu) // calculation for the radius of smallest dark ring
printf("\n Standard formula used \n r = sqrt(n*lambda*R/mu). \n")
printf("\n The radius of smallest dark ring = %f mm.",r*1000)
