clc 
// Given that
E = 1*10^5 // electric field strength inside the plates in V/m
d = 6 // distance between the plates in mm
k = 2.8 // dielectric constant of slab
e_ = 8.85e-12 // electric permittivity of air in C^2/Nm^2
// Sample Problem 3 on page no. 9.11
printf("\n # PROBLEM 3 # \n")
printf(" Standard formula used \n")
printf(" P = e_*(k-1)*E.\n\n ")
P = e_*(k-1)*E
D = e_*k*E
energy_density = 1/2 * k*e_*E^2
printf("Polarization vector is %e C/m^2. \n Displacement vector is %eC/m^2. \n Energy density is %f J/m^3.",P,D,energy_density )
