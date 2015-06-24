clc
//Given that
theta = %pi/2 // scattering angle of photon
h = 6.624e-34 // plank's constant
c = 3e8 // speed of light
e = 1.6e-19 // charge on electron in coloumb
m_e = 9.1e-31 // mass of electron in kg
//Sample Problem 6 Page No. 137
printf("\n\n\n # Problem 6 # \n")
printf("\n Standard formula Used \n delta_lambda = h * (1 - cos (theta )) / ( m_e * c)")
delta_lambda = h * (1 - cos (theta )) /( m_e * c) //calculation of Change in wavelength of electron
printf("\n Change in wavelength of electron is %f  Angstrom. ", delta_lambda*1e10)
