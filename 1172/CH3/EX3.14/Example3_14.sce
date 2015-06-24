clc
//Given that
lambda1 = 6560 // wavelength in Angstrom
n1 = 1 // transition state no
n2 = 2 // transition state no
n3 = 3 // transition state no.
//Sample Problem 14 page No. 141
printf("\n\n\n # Problem 14 # \n")
printf("\n Standard formula Used \n\n For Balmer Series \n 1/lambda =  R*(1-(1/n)^2) \n\n For Lyman series \n 1/lambda =  R*((1/2)^2 -(1/n)^2)")
lambda2 = (n2^2 * n1^2) *(n3^2 - n2^2) /( (n2^2 - n1^2) * (n3^2 * n2^2)) * lambda1  //calculation of Wavelength of first line of Lyman series
printf ("\n \nWavelength of first line of Lyman series is %f Angstrom. ", lambda2 )
