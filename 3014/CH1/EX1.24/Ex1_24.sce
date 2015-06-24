
clc 
//Given that
r = 0.5 // Bohr radius of hydrogen in angstrom
m = 9.1e-31 // Mass of neutron in Kg
h = 6.6e-34 // Plank constant
printf("Example 1.24")
v = h/(2*%pi*r*1e-10*m) // velocity of electron in ground state
printf("\n Velocity of electron in ground state is %e m/s.\n\n\n",v)
// Answer in book is 2.31e6 m/s
