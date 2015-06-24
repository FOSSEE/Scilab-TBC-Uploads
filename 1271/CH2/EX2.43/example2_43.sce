clc 
// Given that
lambda = 5.5e-7 // wavelength of light in meter
a = 0.004 // diameter of objective lens of telescope in meter
x = 1.5e-3 // distance between two pin holes in meter
// Sample Problem 43 on page no. 2.54
printf("\n # PROBLEM 43 # \n")
theta = (1.22 * lambda) / a // calculation for angle  
R = x / theta // calculation for max. distance of pin holes from microscope
printf("\n Standard formula used \n theta = (1.22 * lambda) / a. \n R = x / theta. \n ")
printf("\n Max. distance of pin holes from microscope = %f meter",R)
