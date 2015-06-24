// Scilab Code Ex5.8: Page-287 (2008)
clc; clear;
h = 6.62e-027;    // Planck's constant, erg-s
c = 3e+010;    // Speed of light, cm/s
phi = 3.31e-012;    // Work function for material, erg
lambda0 = h*c/phi;    // Wavelength of incident radiation, cm
printf("\nThe maximum wavelength of radiation which would start the emission of photoelectrons = %d angstrom", lambda0/1e-008);

// Result
// The maximum wavelength of radiation which would start the emission of photoelectrons = 6000 angstrom 