 clc
//given that
h = 6.62e-34 // Planks constant
m_e = 9.1e-31 // mass of electron in kg
e = 1.6e-19 // charge on electron in coulomb
v = 340 // Applied voltage in volt
n = 1 // order for longest passing wavelength
theta = 60 // angle for longest passing wavelength
printf("Example 3.9")
lambda= h/sqrt(2*m_e*e*v) // calculation of wavelength
d = n*lambda/(2*sin(theta*%pi/180))// calculation of spacing of crystal

printf("\nSpacing of crystal is %f angstrom. \n\n\n",d*1e10)
