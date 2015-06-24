clc
//Given
no_fringe = 250 // Number of fringes observed through telescope
lambda1 = 4e-5// wavelength of incident light in cm 
lambda2 = 6.5e-5 // wavelength of incident light in cm 

//Sample Problem 14 Page No. 52
printf("\n # Problem 14 # \n")
printf(" \n Standard formula used \n  2*t = p*lambda")
p =  no_fringe * lambda1 / (lambda2- lambda1)
t = p * lambda2 / 2
printf("\n Thickness  of air film  is %f cm.  ", t)




