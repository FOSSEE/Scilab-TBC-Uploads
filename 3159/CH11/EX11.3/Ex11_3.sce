// Calculate the dislocation density in copper
clc
mu = 44 // shear modulus of copper in GN m^-2
b = 2.55 // burgers vector in angstrom
tau = 35 // shear stress in MN m^-2
printf("Example 11.3")
l = mu*1e9*b*1e-10/(tau*1e6)
rho = 1/l^2

printf("\n Dislocation density in copper is %.1e  m^-2",rho)
// Answer in book is 1e12 m^-2
