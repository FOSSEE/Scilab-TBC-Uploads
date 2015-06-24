clc 
// Given That
R = 1 // radius of curvature of lens of both side in meter
lambda = 5.4e-7 // wavelength of monochromatic light in meter
// Sample Problem 46 on page no. 1.56
printf("\n # PROBLEM 46 # \n") 
n1 = 5 // for 5th dark ring
n2 = 15 // for 10th dark ring
r1 = sqrt((n1*lambda)/(1/R + 1/R)) // calculation for radius of 5th dark ring
r2 = sqrt((n2*lambda)/(1/R + 1/R)) // calculation for radius of 15th dark ring
d = r2 - r1 // calculation for distance between 5th and 15th dark ring
printf("\n Standard formula used \n r = sqrt((n*lambda)/(1/R + 1/R)). \n")
printf("\n Distance between 5th and 15th dark ring = %f cm.",d * 100)
