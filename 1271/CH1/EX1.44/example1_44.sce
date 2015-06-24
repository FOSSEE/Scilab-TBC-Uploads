clc 
// Given That
R = 0.9 // radius of curvature of the lower face of the lens in meter
D = 4.8e-3 // diameter of the 10th dark ring in meter
// Sample Problem 44 on page no. 1.56
printf("\n # PROBLEM 44 # \n") 
n = 10 // for 10th dark ring
lambda = D^2 / (4 * n * R) // calculation for wavelength of light
printf("\n Standard formula used \n lambda = D^2 / (4 * n * R). \n")
printf("\n Wavelength of light = %f A.",lambda * 1e10)
