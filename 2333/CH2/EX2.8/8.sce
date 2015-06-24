clc 
  
// Given that
lambda1 = 7000 // wavelength of first source in angstrom
lambda2 = 5000 // wavelength of second source in angstrom
n = 10 // Order of bright fringe for first source
// Sample Problem 8 on page no. 96
printf("\n # PROBLEM 8 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
x = n*lambda1*1e-10 // Path difference in m
m = x/(lambda2*1e-10)   // Order of bright fringe for second source
printf("\n Observed order will be %d.",m)

