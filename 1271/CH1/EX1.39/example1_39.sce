clc 
// Given That
lambda = 5.896e-7 // wavelength of light in meter
D = 4e-3 // diameter of 7th brighter fringe in m
R = 1 // radius of curvature in m
// Sample Problem 39 on page no. 1.54
printf("\n # PROBLEM 39 # \n") 
n = 7 // for seventh brighter fringe
mu = 2*(2*n-1)*lambda*R / D^2 // calculation for refractive index of liquid
printf("\n Standard formula used \n mu = 2*(2*n-1)*lambda*R / D^2.\n")
printf("\n Refractive index of liquid = %f.",mu)
