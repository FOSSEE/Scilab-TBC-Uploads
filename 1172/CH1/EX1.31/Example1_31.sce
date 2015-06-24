clc
// Given That
lambda=5e-5// wavelength in cm
mu_e=1.5533// refractive index for extraordinary light
mu_o=1.5422// refractive index for ordinary light
//Sample Problem 31 Page No. 59
printf ("\n # Problem 31 # \n ")
printf (" \n Standard formula used \n   lambda= 2t (mu_e-mu_o)\n")
t=lambda/ (2*(mu_e-mu_o)) // calculation of Thickness of half wave plate of quartz
printf ("Thickness of half wave plate of quartz is %e cm", t)


