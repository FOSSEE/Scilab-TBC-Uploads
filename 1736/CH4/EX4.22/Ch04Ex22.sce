// Scilab Code Ex4.22: Page-137 (2006)
clc; clear;
rs_a0_ratio = 2.07;   // Solid radius to lattice parameter ratio for Al
E_F = 50.1*(rs_a0_ratio)^(-2);  // Fermi level energy of Y, eV
// According to Jellium model, h_cross*omega_P = E = 47.1 eV *(rs_a0_ratio)^(-3/2)
E = 47.1*(rs_a0_ratio)^(-3/2);      // Plasmon energy of Al, eV
printf("\nThe plasmon energy of Al = %4.2f eV", E);
printf("\nThe experimental value is 15 eV");

// Result 
// The plasmon energy of Al = 15.81 eV
// The experimental value is 15 eV 


