// Scilab code Ex1.7:  Pg:20 (2008)
clc;clear;
m = 9.1e-031;    // Mass of an electron, kgm
h = 6.6e-034;    // Planck's constant, joule-sec
c = 3e+08;    // Velocity of light, m/s
// Energy of one quantum of radiation is given by E = h*nu and 
// furhter, E = m*c^2 where nu = c/Lambda, the frequency of radiation
// On compairing the energies and solving for Lambda 
Lambda = h/(m*c);    // de Broglie wavelength of an electron, m
printf("\nThe wavelength of quantum of radiant energy = %6.4f angstrom", Lambda/1e-010);

// Result 
// The wavelength of quantum of radiant energy = 0.0242 angstrom