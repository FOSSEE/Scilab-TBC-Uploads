clc
// Given That
mu_e = 1.553 // refractive index of quartz plate for extra ordinary light
mu_o = 1.544 // refractive index of quartz plate for ordinary light
lambda = 5.89e-5 // wavelength of light in Angstrom.
//Sample Problem 30 Page No. 859
printf("\n # Problem 30 # \n ")
printf("Standard formula used is \n lambda= 2t(mu_e-mu_o) \n")
t = lambda / (2 * (mu_e - mu_o))
printf("Thickness of half wave plate of quartz is %e cm.", t)

