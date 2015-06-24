// Scilab code Ex3.9: Pg.139 (2008)
clc; clear;

// Part (a)
theta = 120;    // Scattering angle, degree
lamda_c = 0.00243;    // Compton wavelength of electron, nm
del_lamda = lamda_c*(1-cosd(theta));    // Shift in photon wavelength, nm 
lamda_1 = del_lamda/0.015;    // Wavelength of incident photon, nm
printf("\nThe wavelength of incident photon = %5.3f nm", lamda_1);

// Part (b)
theta = 75;    // New scattering angle, degree
lamda_2 = lamda_1 + lamda_c*(1-cosd(theta)); // Wavelength of shifted photon, nm
printf("\nThe wavelength of shifted photon = %5.3f nm", lamda_2);

// Result
// The wavelength of incident photon = 0.243 nm
// The wavelength of shifted photon = 0.245 nm 