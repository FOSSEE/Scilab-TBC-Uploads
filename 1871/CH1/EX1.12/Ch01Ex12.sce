// Scilab code Ex1.12:  Pg:37 (2008)
clc;clear;
Lambda = 1e-010;    // Wavelength of X-rays, cm
c = 3e+08;    // Velocity of light, m/s
m = 9.13e-031;    // Mass of an electron, kg
h = 6.62e-034;    // Planck's constant, joule-sec
e = 1.6e-019;    // Charge of electron, coulomb
f = c/Lambda;    // Frequency of X-rays, cycles/sec
E = h*f;    // Energy of X-ray photon, joule
// Since energy of X-ray photon is converted into energy of electrons thus
// h*f = (1/2)*m*v^2, solving for v
v = sqrt(2*h*f/m);    // Velocity of the electron, m/s
printf("\nThe energy of an electron beam = %5.0f eV", E/e);
printf("\nThe velocity of an X-ray beam = %5.3e m/s", v);

// Result 
// The energy of an electron beam = 12413 eV
// The velocity of an X-ray beam = 6.596e+007 m/s