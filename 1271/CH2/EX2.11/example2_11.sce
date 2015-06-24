clc 
// Given that
lambda = 5.893e-7 // wavelength of light in meter
d = 2.3e-3 // diameter of the central zone of zone plate in meter
u = 6 // distance between point source from zone plate in meter
// Sample Problem 11 on page no. 2.42
printf("\n # PROBLEM 11 # \n")
n = 1 // for central zone
f = (d^2) / (4 * lambda * n) // calculation for focal length
disp(f)
v = (f * u) / (u - f)  // calculation for distance of first image from zone plate
printf("\n Standard formula used \n f = (d^2) / (4 * lambda * n). \n v = (f * u) / (u - f). \n ")
printf("\n Distance of first image from zone plate = %f meter ",v)
