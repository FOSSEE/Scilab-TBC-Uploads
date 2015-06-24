clc
//Given that
lambda = 0.52 // wavelength in angstrom
theta = 5 // in degree
n = 1 // order of brags reflection
//Sample Problem 10 a  Page No. 139
printf("\n\n\n # Problem 10 a # \n")
printf("\n Standard formula Used \n 2 * d * sin(theta) = n * lambda ")
d = n * lambda / (2 * sin (theta * %pi / 180))
//calculation of separation between adjacent layers of crystals
printf ("\n Separation between adjacent layers of crystals is %f angstrom. ", d)
