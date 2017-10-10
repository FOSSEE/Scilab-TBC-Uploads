// Ex4_2 Page:59 (2014)
clc;clear;
e = 1.6e-019;    // Energy conversion factor, J/eV
m = 9.1e-031;    // Mass of an electron, kg
h = 6.626e-034;  // Planck's constant, Js
c = 3e+08;    // Speed of light in vacuum, m/s
// Non-relativistic case:
E = 1;    // Kinetic energy of an electron, eV
p = sqrt(2*m*E*e);    // Momentum of the electron, kg-m/s
lambda = h/p*1e+09;    // de-Broglie wavelength of electron, nm
printf("\nNon-relativistic Case:\nThe de-Broglie wavelength of electron = %3.1f nm", lambda);
// Relativistic case:
KE = 100;    // Kinetic energy of an electron, MeV
p = KE*e/c*1e+06;    // Relativistic momentum of the electron, kg-m/s
lambda = h/p;    // de-Broglie wavelength of electron, m
printf("\nRelativistic case:\nThe de-Broglie wavelength of electron = %5.3e m", lambda);


// Result 
// Non-relativistic Case:
// The de-Broglie wavelength of electron = 1.2 nm
// Relativistic case:
// The de-Broglie wavelength of electron = 1.242e-14 m 
