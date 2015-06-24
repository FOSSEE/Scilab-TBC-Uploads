clc 
// Given that
theta = 0.3 // Angle of wedge in degree
lambda1 = 6e-5 // Wavelength of light in cm
lambda2 = 4.5e-5 // Wavelength of light in cm
r = 90 // Radius of curvature in cm
// Sample Problem 33 on page no. 120
printf("\n # PROBLEM 33 # \n")

printf("\n Standard formula used \n D_m^2 -D_n^2 = 4*p*r*lambda\n")
n = (lambda2*1e-2)/(lambda1*1e-2-lambda2*1e-2) // Calculation of order 
D_n = sqrt(4*n*lambda1*1e-2*r*1e-2)
printf("\n Diameter of %dth dark ring is %f cm.",n,D_n*1e2)

