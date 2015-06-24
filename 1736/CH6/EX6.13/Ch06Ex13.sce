// Scilab Code Ex6.13: Page-203 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
epsilon = 15.8;  // Dielectric constant of Ge   
m = 9.1e-031;   // Mass of an electron, kg
m_e = 0.2*m;     // Effective masses of the electron in Ge, kg
a_Ge = 5.65;    // Lattice parameter of Ge, angstrom
A_d = 0.53*epsilon*(m/m_e);    // Radius of donor atom, angstrom
printf("\nThe radius of the orbits of fifth valence electron of acceptor impurity = %2d angstrom", ceil(A_d));
printf("\nThis radius is %d times the lattice constant of Ge", ceil(A_d/a_Ge));

// Result 
// The radius of the orbits of fifth valence electron = 42 angstrom 
// This radius is 8 times the lattice constant of Ge 
