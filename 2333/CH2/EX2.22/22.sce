clc 
// Given that
lambda = 5893 // Wavelength in angstrom
r = 0 // Angle of Refraction in degree 
mu = 1.42 // Refractive index of material
n = 1 // order of fringe for black
m = 0.5 // order of bright fringe

// Sample Problem 22 on page no. 108
printf("\n # PROBLEM 22 # \n")
printf("\n Standard formula used \n 2*mu*t*cos(r) = n*lambda\n")
t_n = n*lambda*1e-10/(2*mu*cos(r*%pi/180)) // Calculation of thickness of sheet for black
t_m = m*lambda*1e-10/(2*mu*cos(r*%pi/180)) // Calculation of thickness of sheet for bright
printf("\n Least thickness of sheet for \n Black : %e mm \n Bright: %e mm.", t_n*1e3,t_m*1e3)

  
