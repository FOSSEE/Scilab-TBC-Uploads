clc 
// Given that
I = 1 // Initial intensity
I_o = I/2 // Intensity after one reflection
lambda = 6000 // wavelength of light in angstrom
mu_o = 1.5442 // refractive index of material for ordinary ray
mu_e = 1.5532 // refractive index of material for extra ordinary ray
theta = 30 // Angle of between polaroid’s in degree
// Sample Problem 12 on page no. 217
printf("\n # PROBLEM 12 # \n")
I_theta =  I_o * (cos(theta*%pi/180))^2 // intensity of extra ordinary ray
I_per = I_theta *100/ I // Percentage of incident unpolarized light ray passing through second polaroid
printf("Standard formula used \n I = A^2*cos^2(theata)\n")
printf("\n Percentage of incident unpolarised light ray passing \n through second polaroid is %f.",I_per)

