// Scilab Code Ex16.2 Diamagnetic susceptibility of copper: Page-512 (2010)
e = 1.6e-019;    // Charge on an electron, C
m = 9.1e-031;    // Mass of an electron, kg
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, henry/metre
Z = 1;    // Number of electrons contributing to the magnetic moment
r = 1e-010;    // Radius of copper atom, m
a = 3.608e-010;    // Lattice parameter of copper, m
// For FCC lattice of Cu, there are 4 atoms per unit cell
n = 4;    // Number of atoms per unit cell
N = n/a^3;    // Number of electrons per unit volume, per metre cube
chi_dia = -mu_0*Z*e^2*N*r^2/(6*m);    // Diamagnetic susceptibility of copper 
printf("\nThe diamagnetic susceptibility of copper = %3.1e", chi_dia);
// Result 
// The diamagnetic susceptibility of copper = -5.0e-006 