// Scilab Code Ex5.4 :: Page-5.20 (2009)
clc;clear;
f = 1e+06;      // Frequency of revolution of electron, Hz
rate_phi_B = 25;    // Rate of change of magnetic flux, wb/s
E = f*rate_phi_B;   // Energy of 'f' revolutios, eV
printf("\nThe energy of the electron in Betatron after %g revolutions = %3.1e eV", f, E);

// Result
// The energy of the electron in Betatron after 1e+06 revolutions = 2.5e+07 eV 
