clc 
// Given that
E = 10^6 // electric field inside the plates in V/m
d = 0.02 // distance between the plates in meter
k = 3 // dielectric constant of slab
e_ = 8.85e-12 // electric permittivity of air in C^2/Nm^2
// Sample Problem 1 on page no. 9.11
printf("\n # PROBLEM 1 # \n")
printf(" Standard formula used \n")
printf(" D = e_*E+p. \n D=e_*k*E.\n\n ")
D = e_*k*E
P = D-e_*E
printf("Polarization vector is %e C/m^2. \n Displacement vector is %e C/m^2",P,D)
