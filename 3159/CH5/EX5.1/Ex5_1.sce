// Calculate packing efficiency and density of diamond
clc
n_c = 1/8 // sharing of corner atom in a unit cell
N_c = 8 // Number of corner atoms in unit cell
n_b = 1 // sharing of body centered atom in a unit cell
N_b = 4 // Number of body centered atoms in unit cell
n_f = 0.5// sharing of face centered atom in a unit cell
N_f = 6// Number of face centered atoms in unit cell
a = 1 // let lattice parameter
m = 12 // mass of carbon
printf("\n Example 5.1")
printf("\n Part A:")
N = n_c*N_c+n_b*N_b+n_f*N_f // effective number of atoms
r = a*sqrt(3)/8
p_e = N*4/3*%pi*r^3/a^3 // packing efficiency

printf("\n Packing efficiency of diamond is %.2f",p_e)
printf("\n\n Part B:")
a = 3.57 // lattice parameter in angstrom
d = m*1.66e-27*N/(a*1e-10)^3
printf("\n Density of diamond is %d Kg/m^3",d)// numerical answer in book is 3500
printf("\n Density of diamond is %.1f g/cm^3",d/1000)
