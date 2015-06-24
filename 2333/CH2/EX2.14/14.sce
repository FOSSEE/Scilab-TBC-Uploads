clc 

  
// Given that
mu = 1.5 // Refractive index of material
alpha = 1 // Refracting angle in degree

lambda = 6900 // Wavelength of light in angstrom
d1 = 20 // separation between source and biprism in cm
d2 = 80 // separation between screen and biprism in cm
// Sample Problem 14 on page no. 99
printf("\n # PROBLEM 14 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
D = d1+ d2 // Separation between slit and screen in cm
d = 2*(mu-1)*(alpha*%pi/180)*d1 // Separation between coherent sources
Beta = lambda*1e-10*D*1e-2/(d) // Calculation of fringe width in m
printf("\n Fringe width is %f cm.", Beta*1e2)
