clc 
// Given that
lambda = 5890 // Wavelength in angstrom
i = 45 // Angle of incidence in degree 
mu = 1.33 // Refractive index of soap film
n = 1 // order
// Sample Problem 24 on page no. 100
printf("\n # PROBLEM 24 # \n")
printf("\n Standard formula used \n 2*mu*t*cos(r) = n*lambda\n")
r = asin(sin(45*%pi/180)/mu)
t = n*lambda*1e-10/(2*mu*cos(r)) // Calculation of thickness film
printf("\n Thickness of film is %e mm.", t*1e3)

