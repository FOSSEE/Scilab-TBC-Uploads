clc 
// Given that
lambda1 = 6500 // wavelength of first source in angstrom
lambda2 = 5200 // wavelength of second source in angstrom
d = 2 // Spacing between sources in mm
D = 1.2 // Distance between source and screen
n = 3 // Order of bright fringe
// Sample Problem 6 on page no. 95
printf("\n # PROBLEM 6 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
x_3 = D*n*lambda1*1e-10 / (d*1e-3) // Distance of third bright fringe from center
m = lambda2/(lambda1-lambda2)
x = D*m*lambda1*1e-10 / (d*1e-3) // distance of common fringe from center
printf("\n Distance of third bright fringe from center is %fcm \n. Common fringe will be formed at distance %fcm from center",x_3*100,x*100)
