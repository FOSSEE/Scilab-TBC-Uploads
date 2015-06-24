clc 
// Given that
lambda = 7620 // Wavelength of light in angstrom
mu_r = 1.53914 // refractive index of quartz for right handed circularly polarized light
mu_l = 1.5392 // refractive index of quartz for left handed circularly polarized light
t = 0.5 // thickness of plate in mm
// Sample Problem 19 on page no. 220
printf("\n # PROBLEM 19 # \n")
theta = %pi*t*(mu_l-mu_r)/(lambda*1e-7)*180/%pi // Rotation of plane of polarization
printf("\n Standard formula used \n theta = pi*t*(mu_l-mu_r)/(lambda). \n")
printf("\n Rotation of plane of polarization is %f degree.",theta)

