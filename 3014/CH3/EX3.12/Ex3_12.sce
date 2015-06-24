 clc
//given that
lambda = 0.015 //wavelength in angstrom
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 60 // angle for longest passing wavelength
printf("Example 3.12")
d_lambda= h*(1-cos(theta*%pi/180))*1e10/(m_e*c) // calculation of wavelength shift in angstrom
lambda_n = lambda+d_lambda

printf("\n Wavelength shift is %f angstrom. \n\n\n",lambda_n)
