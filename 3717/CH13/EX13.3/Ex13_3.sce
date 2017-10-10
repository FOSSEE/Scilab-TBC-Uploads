// Ex13_3 Page:259 (2014)
clc;clear;
mu_0 = 4*%pi*1e-007;    // Magnetic permeability, H/m
e = 1.6e-019;    // Charge on an electron, C
m = 9.1e-031;    // Mass of an electron, kg
Z = 1;    // Atomic number of the material
a = 2.55e-010;    // Lattice constant of cubic structure, m
chi_dia = -5.6e-006;    // Diamagnetic susceptibility of the material
N = 2/a^3;    // Number of atoms per unit volume of the material, per metre-cube
r_bar = sqrt(abs(chi_dia)*6*m/(mu_0*Z*e^2*N));    // Radius of an atom of the material, m
printf("\nThe radius of an atom of the material = %5.3f angstrom", r_bar/1e-010);

// Result
// The radius of an atom of the material = 0.888 angstrom 