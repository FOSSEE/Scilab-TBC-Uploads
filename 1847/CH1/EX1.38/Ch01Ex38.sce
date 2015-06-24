// Scilab Code Ex1.38: : Page-1.56 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m0 = 9.1e-031;   // Electronic mass, kg
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
phi = 45;     // Scattering angle of X-rays, degrees
E = 75;     // Incident energy of X-rays, keV
// As from Compton shift formula
// 1/E_prime - 1/E = 1/(m0*c^2)*(1-cosd(phi))
// Solving for E_prime
E_prime = 1/((1/(m0*c^2/(e*1e+03)))*(1-cosd(phi))+1/E); // Energy of scattered photon, keV
E_recoil = E - E_prime;     // Energy of recoil electron, keV

printf("\nThe energy of scattered X-ray = %4.1f keV", E_prime);
printf("\nThe energy of recoil electron = %3.1f keV", E_recoil);

// Result 
// The energy of scattered X-ray = 71.9 keV
// The energy of recoil electron = 3.1 keV 
