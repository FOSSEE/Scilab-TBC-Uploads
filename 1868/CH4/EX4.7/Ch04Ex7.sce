// Scilab code Ex4.7: Pg 135 (2005)
clc; clear;
// Part (a)
n_i = 2;    // Initial level of electron
n_f = 1;    // Final level of electron
R = 1.097e+07;     // Rydberg constant, per metre
c = 3e+08;     // Velocity of light, m/s
h = 4.136e-15;       // Planck's constant, eV
lamda = n_i^2*n_f^2/((n_i^2-n_f^2)*R);   // Wavelength of emitted photon, m
f = c/lamda;      // Frequency of emitted photon, Hz
E = h*f;     // Energy of emitted photon, eV
printf("\nThe wavelength of emitted photon = %5.1f nm", lamda/1e-09);
printf("\nThe frequency of emitted photon = %4.2e Hz", f);
printf("\nEnergy of emitted photon = %4.1f eV", E);

// Part (b)
mc_square = 938.8e+06;   // Energy of recoil of hydrogen atom, eV
K = 0.5*(E^2/mc_square);     // Recoil kinetic energy of H atom, eV
E_difference = K/E;   // Energy difference
printf("\nRecoil kinetic energy of H atom = %4.2e eV", K);
printf("\nThe fraction of energy difference = %3.1e", E_difference);

// Result
// The wavelength of emitted photon = 121.5 nm
// The frequency of emitted photon = 2.47e+15 Hz
// Energy of emitted photon = 10.2 eV
// Recoil kinetic energy of H atom = 5.55e-08 eV
// The fraction of energy difference = 5.4e-09 
