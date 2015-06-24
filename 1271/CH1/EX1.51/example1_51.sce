clc 
// Given That
x = 2.948e-5 // distance moved by movable mirror in meter
n = 100 // no. of fringes cross the field of view 
// Sample Problem 51 on page no. 1.58
printf("\n # PROBLEM 51 # \n") 
lambda = 2*x/n // calculation for wavelength of monochromatic light
printf("\n Standard formula used \n lambda = 2*x/n. \n")
printf("\n Wavelength of monochromatic light = %f A.",lambda * 1e10)
