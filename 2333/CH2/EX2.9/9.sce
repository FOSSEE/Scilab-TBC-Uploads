clc 
// Given that
lambda = 6000 // wavelength of source in angstrom
D = 1 // Distance between source and screen
Beta  = 0.5 // fringe width in mm
// Sample Problem 9 on page no. 96
printf("\n # PROBLEM 9 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
d = D*lambda*1e-10/(Beta*1e-3) // Separation between sources
printf("\n Separation between sources is %fcm.",d*100)

  
