clc
// Given That
lambda=5.89e-5// wavelength in cm
rotation=(%pi/18)// rotation of plane of polarization in degree per cm

//Sample Problem 32 Page No. 60
printf("\n # Problem 32 # \n ")
printf(" \n Standard formula used \n   delta=pi*d*del_mu/lambda \n")
del_mu=rotation*lambda/ (%pi)
printf("Difference in refractive indices of substance is %e .\n",del_mu)

