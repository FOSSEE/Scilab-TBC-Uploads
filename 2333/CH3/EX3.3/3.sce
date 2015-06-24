clc 
// Given that
lambda = 5000 // wavelength of light in angstrom
theta = 30 // Central maximum spread out at on side
// Sample Problem 3 on page no. 139
printf("\n # PROBLEM 3 # \n")
printf(" Standard formula used \n")
printf(" lambda = e*sin(theta)  \n")
e = lambda*1e-10 / sin(theta*%pi/180) // Calculation of width of slit
printf("\n Width of slit is %ecm.",e*1e+2)

   
