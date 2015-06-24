clc 
// Given That
lambda = 5.893e-7 // wavelenth of light in meter
n = 20 // no. of interference fringes are observed 
Mu = 1 // refractive index of air
i = 0 // incidence angle in radian 
r = 0 // refracted angle in radian 
// Sample Problem 28 on page no. 1.50
printf("\n # PROBLEM 28 # \n")
t = (n * lambda) / (2 * Mu) // calculation for thickness of fringe
printf("\n Standard formula used \n w = lambda/(2*mu*theta).\n")
printf("\n  Thickness of wire = %e mm. ",t*1000)
