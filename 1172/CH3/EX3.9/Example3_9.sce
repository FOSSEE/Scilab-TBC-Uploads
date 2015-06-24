clc
//Given that
d = 3.04 // inter layer separation in Angstrom
theta = 14.7 // in degree
n = 2 // order of brags reflection
//Sample Problem  Page No. 139
printf("\n\n\n # Problem 9 # \n")
printf("\n Standard formula Used \n 2 * d * sin(theta) = n * lambda")
lambda = 2 * d * sin( theta * (%pi /180))/ n   //calculation of wavelength making second order Braggs reflection
printf ( " \n Second order brags reflection occurs at %f degree for the wavelength %f Angstrom\n" , theta , lambda)


