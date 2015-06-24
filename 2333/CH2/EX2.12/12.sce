clc 
  
// Given that
lambda1 = 6000 // Wavelength of first light in angstrom
lambda2 = 5000 // wavelength of second wave in angstrom
m = 0 // order of bright fringe
n = 10 // order of bright fringe
d1 = 12.34 // micrometer reading for first zero order in mm
d10 = 14.73 // micrometer reading for 10th order in mm
// Sample Problem 12 on page no. 98
printf("\n # PROBLEM 12 # \n")
printf("\n Standard formula used \n x = D*n*lambda/d \n")
s = d10 - d1 // Separation between zero order and 10th order fringe
Beta1 = s*1e-3/(n-m) // Calculation of fringe width for wavelength 1
Beta2 = (Beta1/lambda1)*lambda2 // Calculation of fringe width for wavelength 2
printf("\n Fringe width for wavelength %d angstrom is %f mm.",lambda2,Beta2*1e3)
