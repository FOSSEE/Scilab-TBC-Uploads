 clc
//given that
lambda = 2 //wavelength in angstrom
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 45 // scattering angle 
printf("Example 3.15")
d_lambda= h*(1-cos(theta*%pi/180))*1e10/(m_e*c) // calculation of wavelength shift in angstrom
lambda_n = lambda+d_lambda // Calculation of recoiled electron wavelength

f = d_lambda/lambda // Calculation of fraction of energy lost by photon 

printf("\nFraction of energy lost by photon is %f\n\n\n",f)
