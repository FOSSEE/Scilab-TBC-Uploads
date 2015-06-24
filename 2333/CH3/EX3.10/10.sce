clc 
   
// Given that
d = 0.4 // separation between slits in mm
e = 0.08 // width of slit in mm
D = 170 // Separation between screen and source in cm
Beta = 0.25 // Fringe width in cm

// Sample Problem 10 on page no. 155
printf("\n # PROBLEM 10 # \n")
printf(" Standard formula used \n")
printf(" theta = 1.22*lambda/a  \n")
lambda = Beta*1e-2*d*1e-3/(d*1e-2) // Calculation of wavelength
ratio = (e+d)/e 
printf("\n Missing order will be %d*n, where n is a natural number.",ratio)

   
