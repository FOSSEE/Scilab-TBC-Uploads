// Scilab Code Ex2.26 Difference in wavelength in the spectra of hydrogen and deuterium: Pg:62 (2008)
R_H = 1.097e+07;    // Rydberg constant for H-atom, per metre
M_H = 1;    // Mass of H-atom, amu
M_D = 2*M_H;    // Mass of D-atom, amu
m = 0.000549*M_H;    // Mass of an electron, amu
R_D = R_H*(1+m/M_H)/(1+m/M_D);    // Rydberg constant for D-atom, per metre
n1 = 2, n2 = 3;    // Principal qunatum numbers for first line of Balmer series
L_H = 1/(R_H*(1/n1^2 - 1/n2^2));    // Wavelength of H-atom, m
L_D = 1/(R_D*(1/n1^2 - 1/n2^2));    // Wavelength of D-atom, m
delta_H = (L_H - L_D)/1e-010;    // Difference in wavelength in the spectra of hydrogen and deuterium, angstrom
printf("\nThe difference in wavelength in the spectra of hydrogen and deuterium = %3.1f angstrom", delta_H);
// Result 
// The difference in wavelength in the spectra of hydrogen and deuterium = 1.8 angstrom 