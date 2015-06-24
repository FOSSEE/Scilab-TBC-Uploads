
 clc
//given that
E_eV = 510 // Energy of gamma ray in keV
lambda = 2 //wavelength in angstrom
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // scattering angle in degree
printf("Example 3.16")
E_j = E_eV*1e3*1.6e-19 // Energy of gamma ray in Joule
lambda = h*c*1e10/E_j // Calculation of wavelength in angstrom

d_lambda= h*(1-cos(theta*%pi/180))*1e10/(m_e*c) // calculation of wavelength shift in angstrom
lambda_n = lambda+d_lambda // Calculation of recoiled electron wavelength
printf("\nWavelength of scattered radiation is %f Angstrom \n\n\n",lambda_n)

