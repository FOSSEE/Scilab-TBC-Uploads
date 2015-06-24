// Scilab Code Ex9.1 Maximum energy transferred by alpha particles: Pg:201 (2008)
E_alpha = 3e+06;    // Incident energy of alpha particles, eV
m = 9.1e-031;    // Mass of an electron, kg
M = 4*1.67e-027;    // Mass of an alpha particle, kg
// As E_alpha = 1/2*M*v^2 so E_electron = 1/2*m*(2*v)^2
// From the two equations
E_electron = 4*E_alpha*m/M;    // Maximum energy of electron, eV
printf("\nThe maximum energy transferred by alpha particles to the electron = %5.3f keV", E_electron/1e+03);
// Result 
// The maximum energy transferred by alpha particles to the electron = 1.635 keV 