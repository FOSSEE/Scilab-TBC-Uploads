
 clc
//given that
lambda = 2 //wavelength in angstrom
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // angle for longest passing wavelength
printf("Example 3.17")
d_lambda= h*(1-cos(theta*%pi/180))*1e10/(m_e*c) // calculation of wavelength shift in angstrom
lambda_n = lambda+d_lambda // Calculation of recoiled electron wavelength
d_E = h*c*(lambda_n-lambda)*1e10/(1.6e-19*lambda_n*lambda)// Calculation of recoiled electron energy in eV
printf("\n Scattered wavelength is %f angstrom.",lambda_n)
printf("\n Energy of recoiled electron is %feV. \n\n\n",d_E)
