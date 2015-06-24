clc 
// Given That
n = 140 // no. of shift in fringe
lambda = 5.46e-7 // wavelength of light in meter
t = 0.2 // length of tube in meter
// Sample Problem 54 on page no. 1.58
printf("\n # PROBLEM 54 # \n") 
mu = (n*lambda)/(2*t) + 1 // calculation for refractive index of gas
printf("\n Standard formula used \n mu = (n*lambda)/(2*t) + 1. \n")
printf("\n  Refractive index of gas = %f.",mu)
