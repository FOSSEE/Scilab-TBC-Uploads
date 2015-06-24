// Compute the line energy of dislocation
clc
a = 2.87 // lattice parameter in angstrom
b= 2.49 // magnitude of burgers vector in angstrom
G = 80.2 // shear modulus in GN
printf("\n Example 6.2")
E = G*1e9*(b*1e-10)^2*1/2 
printf("\n Line energy of dislocation is %.2e J m^-1",E)

