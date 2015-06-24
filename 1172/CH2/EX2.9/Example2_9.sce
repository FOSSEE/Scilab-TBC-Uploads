clc
// Given That
sigma = 2e-6 // surface charge density in c/m^2 on XY plane
theta = 60 // angle between normal and X axis on degree
r = 10 // radius of circle in cm
epsilon_0 = 8.85e-12 // permitivity of free space
//Sample Problem 9 Page No. 84
printf("\n # Problem 9  # \n ")
printf("standard formula used \n phi = sigma*A*cos(theta)/(2*epsilon_0) \n\n")
phi = sigma* %pi*(r*1e-2)^2 * cos (theta*%pi/180) / (2*epsilon_0) //calculation of Flux through coil
 printf("Flux through coil is  %e Nm^2/C. \n", phi)
