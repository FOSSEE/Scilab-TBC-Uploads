clc 
// Given that
lambda = 5.5e-7 // wavelength of light in meter
a = 5 // diameter of objective lens of telescope in meter
R = 3.8e8 // distance of moon in meter
// Sample Problem 40 on page no. 2.53
printf("\n # PROBLEM 40 # \n")
theta = (1.22 * lambda) / a // calculation for angle 
x = (R * theta) // calculation for the separation of two points on moon
printf("\n Standard formula used \n theta = (1.22 * lambda) / a. \n x = (R * theta). \n")
printf("\n The separation of two points on moon = %f meter",x)
