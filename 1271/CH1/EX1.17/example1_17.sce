clc 
// Given That
D = 1.20 // distance between source and eye piece in meter
Xn = 1.9e-2 // distance move by eye piece for 20 fringe in meter
n = 20 // no. of fringes
d = 6e-4 // distance between slits in meter 
// Sample Problem 17 on page no. 1.45
printf("\n # PROBLEM 17 # \n")
lambda = (Xn * d) / (D * n)// calculation for wavelength
printf("\n Standard formula used \n beta = lambda*D/d.")
printf("\n Wavelength of light = %f A.", lambda*1e10)
