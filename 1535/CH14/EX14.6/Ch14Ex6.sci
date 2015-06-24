// Scilab Code Ex14.6: Mean radius of body centered cubic structure: Page-308 (2010)
chi = 5.6e-006;    // Magnetic susceptibility of diamagnetic material
m = 9.1e-031;    // Mass of an electron, kg
mu_0 = 4*%pi*1e-07;    // Magnetic permeability of free space, tesla metre per ampere
Z = 1;    /// Atomic number
e = 1.6e-019;    // Electronic charge, C
a = 2.53e-010;    // Lattice parameter of bcc structure, m
N = 2/a^3;    // The number of electrons per unit volume, per metre cube
r = sqrt(chi*6*m/(mu_0*Z*e^2*N));    // Mean radius of body centered cubic structure as per Langevin relation for Diamagnetic susceptibility, m
printf("\nThe mean radius of body centered cubic structure = %5.3e angstrom", r/1e-010);

// Result
// The mean radius of body centered cubic structure = 8.773e-001 angstrom