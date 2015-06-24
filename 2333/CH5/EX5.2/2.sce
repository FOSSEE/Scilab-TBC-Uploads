clc 
// Given that
l = 4e5 // Distance of moon in km
lambda = 8e-7 // wavelength of light used
a = 5e-3 // Aperture of laser
c = 3e8 // speed of light
// Sample Problem 2 on page no. 242
printf("\n # PROBLEM 2 # \n")
theta = lambda/a  // Angular of spread 
Areal_spread = (l*1000*theta)^2 // Areal spread
printf("\n Angular  spread  is %e rad. \n Areal spread is %em^2.",theta,Areal_spread)

