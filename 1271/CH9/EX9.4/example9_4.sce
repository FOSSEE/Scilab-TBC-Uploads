clc 
// Given that
D = 5e-4 // electric displacement vector in C/m^2
P = 4e-4 // electric polarization vector in C/m^2
v = 0.5 // volume of the slab in m^3
e_ = 8.85e-12 // electric permittivity of air in C^2/Nm^2
// Sample Problem 4 on page no. 9.12
printf("\n # PROBLEM 4 # \n")
printf(" Standard formula used \n")
printf(" D= e_*E.\n\n ")
E= (D-P)/ e_
k = D/(e_*E)
p = P*v
energy_density = 1/2 * k*e_*E^2
printf("Value of relative permittivity is %d. \n Total dipole moment of the slab is %e C-m.",k,p )
