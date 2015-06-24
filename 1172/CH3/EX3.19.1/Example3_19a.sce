clc
//Given that
lambda = 1 // wavelength in Angstrom
theta = 90 // angle of scattered photon in degree
m_e = 9.11e-31 // mass of electron in Kg
c = 3e8 // speed of light in m/s
h = 6.63e-34 // plank's constant
//Sample Problem 19a page No. 144
printf("\n\n\n # Problem 19a # \n")
printf("\n Standard formula Used \n delta_lambda = h * (1 - cos (theta )) / ( m_e * c)")
lambda_shift = h *(1 - cos(theta * %pi / 180))/ ( m_e * c) //calculation of Change in frequency  
printf ("\n Change in frequency  is %f Hz. ", lambda_shift * 1e10)


