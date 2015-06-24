clc 
// Given that
theta = 0.3 // Angle of wedge in degree
lambda1 = 5890 // Wavelength of light in angstrom
lambda2 = 5896 // Wavelength of light in angstrom

// Sample Problem 30 on page no. 100
printf("\n # PROBLEM 30 # \n")
printf("\n Standard formula used \n 2*t = (2n+1)*lambda/2\n")
n = (3*lambda2-lambda1)/(2*(lambda1-lambda2)) // Calculation of order
t = (lambda1*1e-10*lambda2*1e-10)/(lambda2*1e-10-lambda1*1e-10) // Calculation of thickness 
x = t/(2*theta*%pi/180) // Calculation of Distance from apex
printf("\n Distance from apex is %f cm.",x*1e2)
// Answer in book is 5.56 cm
