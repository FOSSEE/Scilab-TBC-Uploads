// Scilab Code Ex13.4: Page-484(2014)
clc; clear;
u = 931.5;    // Energy equivalent of 1 amu, MeV
K_lab = 14.6;    // Kinetic energy of incident aplha particle, MeV
Mx = 4;    // Mass number of projectile nucleus
MX = 12;    // Mass number of target nucleus
M_He = 4.002603;    // Mass of He nucleus, u
M_C = 12.0 // Mass of carbon nucleus, u
M_O = 15.994915;    // Mass of oxygen nucleus, u
K_cm = MX/(Mx + MX)*K_lab;    // Kinetic energy available in the centre of mass, MeV
E_O = (M_He + M_C - M_O)*u;    // The ground state excitation energy of O-16, MeV
E_final_O = K_cm + E_O;    // The final excitation energy of O-16, MeV
printf("\nThe final excitation energy of O-16 = %4.2f MeV", E_final_O);

// Result
// The final excitation energy of O-16 = 18.11 MeV 