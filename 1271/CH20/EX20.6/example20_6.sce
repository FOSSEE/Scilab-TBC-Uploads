clc 
// Given that
V = 9.8e3 // voltage in V
i = 2e-3 // current in amp
c = 3e8 // speed of light in m/sec
// Sample Problem 6 on page no. 20.8
printf("\n # PROBLEM 6 # \n")
printf("Standard formula used \n ")
printf("h*c/lambda = eV \n")
lambda = 12400 / V
f = c / lambda
printf("\n Highest frequency is %e Hz.\n Minimum wavelength is %f Angstrom.",f,lambda)
