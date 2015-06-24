
clc 
//Given that
E = 1 // Energy of neutron in eV
m = 1.67e-27 // Mass of neutron in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.18")
lambda = h/sqrt(2*m*E*1.6e-19) // Calculation of velocity of moving electron
printf("\n Wavelength of electron is %f angstrom.\n\n\n",lambda*1e10)
// Answer in book is 6.62e-22 angstrom
