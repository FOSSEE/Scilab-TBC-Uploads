// Scilab Code Ex5.5: Page-285 (2008)
clc; clear;
function [] = check_energy(E, L)
phi = 4.8;    // Work function for tungsten, eV
    if E > phi then
        printf("\nThe wavelength %d angstrom will be able to liberate an electron.", ceil(L/1e-010));
    else
        printf("\nThe wavelength %d angstrom will not be able to liberate an electron.", ceil(L/1e-010));    
    end
endfunction
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
// Case 1
lambda = 2000e-010;    // Wavelength of incident radiation, m
E = h*c/(lambda*1.6e-019);    // Energy of the incidnt radiation, eV
check_energy(E, lambda);    // Check for the wavelength
// Case 2
lambda = 5000e-010;    // Wavelength of incident radiation, m
E = h*c/(lambda*1.6e-019);    // Energy of the incidnt radiation, eV
check_energy(E, lambda);    // Check for the wavelength

// Result
// The wavelength 2000 angstrom will be able to liberate an electron.
// The wavelength 5000 angstrom will not be able to liberate an electron. 