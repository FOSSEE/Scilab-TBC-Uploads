clc
//Given that
lambda1 = 4700 // wavelength in Angstrom
lambda2 = 1.4e-5//wavelength in cm 
temp1 = 6174 // temperature of a black of in kelvin
//Sample Problem 17 page No. 143
printf("\n\n\n # Problem 17 # \n")
printf("\n Standard formula Used \n lambda * T = constant")
temp2 = lambda1 * temp1 / (lambda2 * 1e8) //calculation of temperature
printf ("\n Blackbody will emit  wavelength 1.4e-5 cm at %d K.",  temp2 )
