// Scilab Code Ex6.14 : Effect of structural change on volume : Page-139 (2010)
// For bcc structure
r = 1.258e-010;    // Atomic radius of bcc structure of iron, m
a = 4*r/sqrt(3);    // Lattice parameter of bcc structure of iron, m
V = a^3;    // Volume of bcc unit cell, metre cube
N = 2;    // Number of atoms per unit cell in bcc structure
V_atom_bcc = V/N;    // Volume occupied by one atom, metre cube
// For fcc structure
r = 1.292e-010;    // Atomic radius of fcc structure of iron, m
a = 2*sqrt(2)*r;    // Lattice parameter of fcc structure of iron, m
V = a^3;    // Volume of fcc unit cell, metre cube
N = 4;    // Number of atoms per unit cell in fcc structure
V_atom_fcc = V/N;    // Volume occupied by one atom, metre cube
delta_V = (V_atom_bcc-V_atom_fcc)/V_atom_bcc*100;    // Percentage change in volume due to structural change of iron
printf("\nThe percentage change in volume of iron = %4.2f percent", delta_V);

// Result 
// The percentage change in volume of iron = 0.49 percent 