// Scilab Code Ex6.12: Page-203 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/mol/K
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
T = 300;        // Room temperature of the material, K
K_Si = 11.7;    // Dielectric constant of Si
K_Ge = 15.8;    // Dielectric constant of Ge
m = 9.1e-031;   // Mass of an electron, kg
m_eff = 0.2;    // Effective masses of the electron in both Si and Ge, kg
E_ion_Si = 13.6*m_eff/K_Si^2;   // Donor ionization energy of Si, eV
E_ion_Ge = 13.6*m_eff/K_Ge^2;   // Donor ionization energy of Ge, eV
E = k*T/e;      // Energy available for electrons at 300 K, eV
printf("\nThe donor ionization energy of Si = %6.4f eV", E_ion_Si);
printf("\nThe donor ionization energy of Ge = %6.4f eV", E_ion_Ge);
printf("\nThe energy available for electrons at 300 K = %5.3f eV", E);

// Result 
// The donor ionization energy of Si = 0.0199 eV
// The donor ionization energy of Ge = 0.0109 eV
// The energy available for electrons at 300 K = 0.026 eV 

