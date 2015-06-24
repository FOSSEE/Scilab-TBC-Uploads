clc 
// Given That
lambda = 5.893e-7 // wavelength of light in meter
Mu = 1.42 // refractive index of soap film 
i = 0 // incidence angle in radian 
r = 0 // refracted angle in radian
// Sample Problem 19 on page no. 1.46
printf("\n # PROBLEM 19 # \n")
n = 1 // for smallest thickness
t1 = ((2 * n - 1) * lambda) / (4 * Mu * cos(r)) // calculation for east thickness of soap film for bright fringe
t2 = (n * lambda) / (2 * Mu * cos(r)) // calculation for east thickness of soap film for dark fringe
printf("\n Standard formula used \n thickness for bright fringe = ((2 * n - 1) * lambda) / (4 * Mu * cos(r)). \n thickness for dark fringe = (n * lambda) / (2 * Mu * cos(r)).\n ")
printf("\n Least thickness of soap film -\n (a) For bright fringe = %e mm. \n (b) For dark fringe = %e mm.",t1*1000,t2*1000)
