clc 
// Given That
lambda1 = 5.896e-7 // max. wavelength of light in meter
lambda2 = 5.89e-7 // min. wavelength of light in meter
// Sample Problem 52 on page no. 1.58
printf("\n # PROBLEM 52 # \n") 
x = lambda1 * lambda2 /(2*(lambda1 - lambda2)) // calculation for the path difference
printf("\n Standard formula used \n x = lambda1 * lambda2 /2*(lambda1 - lambda2).\n")
printf("\n The distance through which the movable mirror is move = %f mm.",x*10^3)
