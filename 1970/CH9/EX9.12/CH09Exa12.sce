// Scilab code Exa9.12 : : Page-395 (2011)
clc; clear;
h_cut = 1.054571628e-34;    // Redued planck's constant, joule sec
a = 1e-014;            // Distance of closest approach, metre
m = 1.67e-27;        // Mass of each nucleon, Kg
KE = 14*%pi^2*h_cut^2/(2*m*a^2*1.6e-13);        // Kinetic energy of iron nucleus, MeV
printf("\nThe kinetic energy of iron nuclei = %5.2f MeV", KE);

// Result
// The kinetic energy of iron nuclei = 28.76 MeV 