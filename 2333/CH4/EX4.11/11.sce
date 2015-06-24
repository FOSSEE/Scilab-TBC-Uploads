clc 
// Given that
k = 1 // constant
lambda = 6000 // wavelength of light in angstrom
mu_o = 1.5442 // refractive index of material for ordinary ray
mu_e = 1.5532 // refractive index of material for extra ordinary ray
theta = 30 // Angle of incidence in degree
// Sample Problem 11 on page no. 216
printf("\n # PROBLEM 11 # \n")
I_e =  k * (cos(theta*%pi/180))^2 // intensity of extra ordinary ray
I_o =  k * (sin(theta*%pi/180))^2 // intensity of ordinary ray
R = I_e/I_o // ratio of intensities
printf("Standard formula used \n I = A^2*cos^2(theta)\n")
printf("\n Ratio of intensities is %d:1.",R)

