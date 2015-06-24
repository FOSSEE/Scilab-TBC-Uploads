 clc
//given that
lambda = 1 //wavelength in angstrom
h = 6.62e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // angle for longest passing wavelength
printf("Example 3.11")
d_lambda= h*(1-cos(theta*%pi/180))/(m_e*c) // calculation of wavelength shift 

printf("\nWavelength shift is %f angstrom. \n\n\n",d_lambda*1e10)

