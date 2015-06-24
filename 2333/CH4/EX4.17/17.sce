clc
// Given that
lambda = 5086 // Wavelength of light
s = 29.73 // Specific rotation of fluid in deg/mm
// Sample Problem 17 on page no. 219
printf("\n # PROBLEM 17 # \n")
del_mu = lambda*1e-7*s/180 // Calculation of differences in refractive index 
printf("\n Standard formula used \n theta = pi*d*del_mu/lambda. \n")
printf("\n Differences in refractive indices is %e .",del_mu)

