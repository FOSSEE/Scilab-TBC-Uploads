// Scilab code Ex12.1: Pg.565 (2008)
clc; clear;
// Since creation of proton-antiproton requires at least 2*E = 1877 MeV, therefore, solving for E
E = 1877/2;    // Energy of proton, MeV
h = 4.136e-15;    // Plank's constant, eV-s
c = 3e+17;    // Velocity of light, nm/s
lamda = (h*c)/E ;   // Wavelength of proton, fm
printf("\nThe energy of proton = %3d MeV", E);
printf("\nThe wavelength of proton = %4.2f fm", lamda);

// Result
// The energy of proton = 938 MeV
// The wavelength of proton = 1.32 fm 