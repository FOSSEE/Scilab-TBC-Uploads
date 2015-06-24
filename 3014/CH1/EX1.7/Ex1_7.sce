clc 
//Given that
e = 1.632e-19 // charge on electron in coulomb
V = 50 // Applied voltage in volts
m = 9.1e-31 // Mass of electron in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.7")

lambda = h/(sqrt(2*e*V*m)) // calculation of de Broglie wavelength
printf("\n de Broglie wavelength of neutron is %f angstrom.\n\n\n", lambda*1e10)
// Answer in book is 1.735 angstrom which is misprinted
