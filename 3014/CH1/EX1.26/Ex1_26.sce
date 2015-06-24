
clc 
//Given that
lambda = 2 // wavelength of neutron in angstrom
m = 1.67e-27 // Mass of neutron in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.26")
v = h/(lambda*1e-10*m) // velocity of neutron
k = 0.5*m*v^2 // Kinetic energy of neutron
printf("\n Velocity of neutron is %e m/s.",v)
printf("\n Kinetic energy of neutron is %f eV.\n\n\n",k/1.6e-19)
// Answer in book is 0.021eV
