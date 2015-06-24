clc 
// Given that
N = 400000 // no. of lines in grating per meter
lambda = 5e-7 // wavelength of incident radiation in meter
n = 3 // no. of order
// Sample Problem 36 on page no. 2.52
printf("\n # PROBLEM 36 # \n")
p = (n * N) / (sqrt(1 - (N * n * lambda)))// dispersive power (p) = d(theta)/d(lambda)
printf("\n Standard formula used \n p = (n * N) / (sqrt(1 - (N * n * lambda))). \n")
printf("\n Dispersive power = %e rad/m",p)
