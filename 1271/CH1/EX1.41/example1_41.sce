clc 
// Given That
lambda = 5.896e-7 // wavelength of light in meter
D = 5.1e-3 // diameter of 16th brighter fringe in m
R = 1 // radius of curvature in m
// Sample Problem 41 on page no. 1.55
printf("\n # PROBLEM 41 # \n") 
n = 16 // for sixteenth brighter fringe
mu = 4*n*lambda*R / D^2 // calculation for refractive index of liquid
printf("\n Standard formula used \n mu = 4*n*lambda*R / D^2.\n")
printf("\n Refractive index of liquid = %f.",mu)
