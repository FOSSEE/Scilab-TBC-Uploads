clc 
//Given that
e = 1.6e-19 // charge on electron in coulomb
V = 54 // Applied voltage in volts
m = 9.1e-31 // Mass of electron in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.9")

lambda = h/(sqrt(2*e*V*m)) // calculation of de Broglie wavelength
printf("\n de Broglie wavelength of neutron is %f angstrom.\n\n\n", lambda*1e10)
