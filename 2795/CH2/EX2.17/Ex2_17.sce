// Scilab Code Ex2.17: Page-72 (2013)
clc; clear
u = 931.5;    // Energy equivalent of 1 amu, MeV/u
c = 1;    // For simplicity assume speed of light in vacuum to be unity, m/s
E_B = 4.24;    // The dissociationenergy of the NaCl molecule, MeV
M = 58.44*u;    // Energy corresponding to molecular mass of NaCl, MeV
f_r = E_B/M;    // The fractional mass increase of the Na and Cl atoms
printf("\nThe fractional mass increase of the Na and Cl atoms when they are not bound together in NaCl = %4.1e", f_r/1e+006);

// Result 
// The fractional mass increase of the Na and Cl atoms when they are not bound together in NaCl = 7.8e-011 