// Scilab code Ex10.12: Pg.465 (2008)
clc; clear;
a = 0.1;    // Lattice spacing, nm
k = %pi/a;    // Wave number
E_F = 1;    // Fermi energy gap, eV
E_g = 1e-04;    // Binding energy of coper pairs, eV
// Since E_g/E_F = 2*delta_k/k, solving for delta_k 
delta_k = E_g/E_F*k/2;    // Uncertainty in the value of k, per nm
delta_x = 1/delta_k;    // Extent of wave function in space, nm
printf("\nThe separation between the electrons forming the cooper pair = %4.1f nm", delta_x);

// Result
// The separation between the electrons forming the cooper pair = 636.6 nm 
