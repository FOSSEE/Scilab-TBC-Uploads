clc
//Given that
nu = 3.2e19 // frequency in hartz
theta = 90 // angle of scattered photon in degree
m_e = 9.1e-31 // mass of electron in Kg
c = 3e8 // speed of light in m/s
h = 6.626e-34 // plank's constant
//Sample Problem 11  Page No. 140
printf("\n \n\n# Problem 11 # \n")
printf("\n Standard formula Used \n delta_lambda = h * (1 - cos (theta )) / ( m_e * c)")
lambda = c / nu//calculation of incident wavelength
lambda_shift = h *(1 - cos(theta * %pi / 180))/ ( m_e * c) //calculation of shift in wavelength
lambda1 = lambda + lambda_shift//calculation of wavelength of scattered photon
nu1 = c / lambda1//calculation of Frequency after scattering  
printf ("\n Frequency after scattering  is %e Hz. ", nu1)
