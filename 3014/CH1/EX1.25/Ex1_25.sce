
clc 
//Given that
lambda = 5890 // wavelength of yellow radiation in angstrom
m = 9.1e-31 // Mass of neutron in Kg
h = 6.63e-34 // Plank constant
printf("Example 1.25")
v = h/(lambda*1e-10*m) // velocity of electron in ground state
printf("\n Velocity of electron in ground state is %e m/s.\n\n\n",v)
// Answer in book is 1.24e3 m/s
