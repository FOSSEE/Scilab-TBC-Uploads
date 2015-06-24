 clc
//given that
lambda = 1 //let wavelength in angstrom
lambda_n = 2*lambda // recoiled electron wavelength
h = 6.63e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
c = 3e8 // speed of light in m/sec
theta = 90 // angle for longest passing wavelength
printf("Example 3.14")
lambda = h*1e10/(m_e*c) // calculation of wavelength in angstrom
E = h*c*1e10/(lambda*1.6e-19) // calculation of energy of electron

printf("\nWavelength shift is %f angstrom. ",lambda)
printf("\nEnergy of recoiled electron is %f KeV. \n\n\n",E/1e3)
