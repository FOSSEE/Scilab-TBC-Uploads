 
 clc
//given that
E_eV = 510 // Energy of gamma ray in keV
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // scattering angle in degree
printf("Example 3.18")
E_j = E_eV*1e3*1.6e-19 // Energy of gamma ray in Joule
lambda = h*c/E_j // Calculation of wavelength in meter

d_lambda= h*(1-cos(theta*%pi/180))*1e10/(m_e*c) // calculation of wavelength shift in angstrom
lambda_n = lambda+d_lambda/1e10 // Calculation of recoiled electron wavelength
d_E = h*c*(d_lambda/1e10)/(1.6e-19*lambda_n*lambda)// Calculation of recoiled electron energy in eV
psi= atan(1/(tan((theta*%pi/180)/2)/(1+(h/(lambda*m_e*c))))) 
phi_deg = 90 - psi*180/%pi // Calculation of degree part of angle of recoiled electron 
phi_min = 60*(phi_deg - floor(phi_deg))// Calculation of minute part of angle of recoiled electron 
printf("\nWavelength of scattered radiation is %e m ",lambda_n)
printf("\nEnergy of recoiled electron is %f MeV.",d_E/1e6)
printf("\nRecoiled electron angle is %d degree%d minute \n\n\n",phi_deg,phi_min)
