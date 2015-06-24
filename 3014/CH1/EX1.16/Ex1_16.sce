clc 
//Given that
e = 2*1.6e-19 // charge on alpha particle in coulomb
V = 200 // Applied voltage in volts
m = 4*1.67e-27 // Mass of alpha particle in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.16")

lambda = h/(sqrt(2*e*V*m)) // calculation of de Broglie wavelength
printf("\n de Broglie wavelength of neutron is %f angstrom.\n\n\n", lambda*1e10)
// while answer in book is 0.00715 angstrom
