
clc 
//Given that
lambda = 1 // de Broglie wavelength of neutron in angstrom
m = 1.67e-27 // Mass of electron in Kg
h = 6.62e-34 // Plank constant
printf("Example 1.11")

v = h/(m*lambda*1e-10) // Calculation of velocity of moving neutron
E = 1/2*m*v^2 // Calculation of kinetic energy of moving neutron
printf("\n velocity of neutron is %e m/s.",v)
printf("\n Kinetic energy of neutron is %f eV.\n\n\n",E/1.6e-19)
