clc 
// Given that
lambda = 5890 // Wavelength in angstrom
r = 60 // Angle of Refraction in degree 
mu = 1.5 // Refractive index of material
n = 1 // order of fringe

// Sample Problem 21 on page no. 108
printf("\n # PROBLEM 21 # \n")
printf("\n Standard formula used \n 2*mu*t*cos(r) = n*lambda\n")
t = n*lambda*1e-10/(2*mu*cos(r*%pi/180)) // Calculation of thickness of sheet
printf("\n Thickness of sheet is %e mm.", t*1e3)

