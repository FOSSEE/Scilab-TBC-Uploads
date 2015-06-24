// Scilab Code Ex5.1 Variation of fraction of atoms in a solid with temperature Page-158 (2010)
E = 1.5;    // Energy of the solid, electron-volt
T1 = 300;    // First absolute temperature, K
T2 = 1500;    // Second absolute temperature, K
k = 8.614D-5;    // Boltzmann constant, electron-volt/K
// Now fraction of atoms = f_atom = n/N = exp(-E/(k*T)
f_atom_300 = exp(-E/(k*T1));    // Fraction of atoms in the solid at 300 K
f_atom_1000 = exp(-E/(k*T2));    // Fraction of atoms in the solid at 1000 K
printf("\nThe fraction of atoms in the solid at 300 K, is : %5.3e", f_atom_300);
printf("\nThe fraction of atoms in the solid at 1000 K, is : %5.3e", f_atom_1000);
//Result
// The fraction of atoms in the solid at 300 K, is : 6.185e-026
// The fraction of atoms in the solid at 1000 K, is : 9.084e-006
