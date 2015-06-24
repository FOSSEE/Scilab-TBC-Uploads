// Scilab code Exa8.10 : : Page-352 (2011)
clc; clear;
r = 2e-015;          // Range of nuclear force, metre
h_kt = 1.0546e-34;   // Reduced value of Planck's constant, joule sec
m = 1.674e-27;       // Mass of each nucleon, Kg
K = round (2*h_kt^2/(2*m*r^2*1.6023e-13));        // Kinetic energy of each nucleon in centre of mass frame, mega electron volts
K_t = 2*K;        // Total kinetic energy, mega electron volts
K_inc = 2*K_t;    // Kinetic energy of the incident nucleon, mega electron volts
printf("\nThe kinetic energy of each nucleon = %d MeV\nThe total kinetic energy = %d MeV\nThe kinetic energy of the incident nucleon = %d MeV", K, K_t, K_inc);

// Result
// 