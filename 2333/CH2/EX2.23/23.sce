clc 
// Given that
lambda1 = 6.1e-7 // Wavelength in angstrom
lambda2 = 6.0e-7 // Wavelength in angstrom
i = asin(4/5) // Angle of incidence 
mu = 4/3 // Refractive index of material

// Sample Problem 23 on page no. 109
printf("\n # PROBLEM 23 # \n")

printf("\n Standard formula used \n 2*mu*t*cos(r) = n*lambda\n")
n = lambda2/(lambda1-lambda2) // Calculation of order
r = asin(sin(i)/mu)
t = n*lambda1/(2*mu*cos(r)) // Calculation of thickness film
printf("\n Thickness of film is %e mm.", t*1e3)

