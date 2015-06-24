clc 
  
// Given that
lambda = 5890 // Wavelength of light in angstrom
d1 = 5 // separation between slit and biprism in cm
d2 = 75 // Distance between screen and biprism in cm
Beta = 9.424e-2 // Fringe width in cm

// Sample Problem 13 on page no. 99
printf("\n # PROBLEM 13 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
D = d1+ d2 // Separation between slit and screen in cm
d = D*1e-2*lambda*1e-10/(Beta*1e-2) // Calculation for separation between two coherent sources in m
printf("\n Separation between two coherent sources is %f cm.", d*1e2)
