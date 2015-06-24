clc 
// Given that
D = 5e-3 // diameter of laser in meter
lambda = 7.2e-7 // wavelength of light in meter
d = 4e8 // distance at moon from earth in meter
// Sample Problem 5 on page no. 4.26
printf("\n # PROBLEM 5 # \n")
r = (D / 2) // calculation for radius
theta = (0.637 * lambda) / r // calculation for angular spread
areal_spread = (d * theta)^2 // calculation for areal spread
printf("\n Standard formula used \n theta = (0.637 * lambda) / r. \n areal_spread = (d * theta)^2. \n ")
printf("\n Angular spread = %e radian ,\n Areal spread = %e square meter",theta,areal_spread)
