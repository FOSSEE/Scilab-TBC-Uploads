// Scilab Code Ex4.21: Page-135 (2006)
clc; clear;
n = 6.04e+022;  // Concentration of electrons in yittrium, per metre cube
r_s = (3/(4*%pi*n))^(1/3)/1e-08;    // Radius of the solid, angstrom
a0 = 0.529; // Lattice parameter of yittrium, angstrom
rs_a0_ratio = r_s/a0;   // Solid radius to lattice parameter ratio
E_F = 50.1*(rs_a0_ratio)^(-2);  // Fermi level energy of Y, eV
printf("\nThe Fermi energy of yittrium = %5.3f eV", E_F);
Ryd = 13.6;     // Rydberg energy constant, eV
E_bs = 0.396*Ryd;   // Band structure energy value of Y, eV
printf("\nThe band structure value of E_F = %5.3f eV is in close agreement with the calculated value of %5.3f eV", E_bs, E_F); 

// Result 
// The Fermi energy of yittrium = 5.608 eV
// The band structure value of E_F = 5.386 eV is in close agreement with the calculated value of 5.608 eV 


