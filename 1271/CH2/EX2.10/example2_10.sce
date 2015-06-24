clc 
// Given that
lambda = 4e-7 // wavelength of light in meter
u = 0.2 // distance of object from zone plate in meter
v = 0.2 // distance of brightest image from from zone plate in meter 
r = 0.01 // radius in meter
// Sample Problem 10 on page no. 2.41
printf("\n # PROBLEM 10 # \n")
f = (u * v) / (u + v) // calculation for focal length
n = (r^2) / (f * lambda) // calculation for no. of zone of Fresnel
printf("\n Standard formula used \n f = (u * v) / (u + v). \n n = (r^2) / (f * lambda).\n ")
printf("\n No. of zone of Fresnel = %f",n)
