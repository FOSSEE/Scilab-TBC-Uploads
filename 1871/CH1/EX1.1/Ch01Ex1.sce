// Scilab code Ex1.1 : Pg:18 (2008)
clc;clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J
m = 0.05;    // Mass of the golf ball, kg
v = 20;    // Velocity of golf ball, m/s
h = 6.625e-034;    // Planck's constant, joule-sec
Lambda1 = h/(m*v);    // de Broglie wavelength of a golf ball, m
m = 1.67e-027;    // mass of proton, kg
v = 2200;    // Velocity of proton, m/s
Lambda2 = h/(m*v);    // de Broglie wavelength of a proton, m
E = 10*e;    // Kinetic energy of an electron, eV
m = 9.11e-031;    // Mass of electron, kg
Lambda3 = h/sqrt(2*m*E);    // de Broglie wavelength of an electron, m
printf("\nThe de-Broglie wavelength of a golf ball = %5.3e m", Lambda1);
printf("\nThe de-Broglie wavelength of a proton = %4.2e m", Lambda2);
printf("\nThe de-Broglie wavelength of a electron = %3.1f m", Lambda3/1e-010);

// Result 
// The de-Broglie wavelength of a golf ball = 6.625e-034 m
// The de-Broglie wavelength of a proton = 1.80e-010 m
// The de-Broglie wavelength of a electron = 3.9 m