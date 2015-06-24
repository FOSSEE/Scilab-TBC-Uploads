// Scilab Code Ex2.16 Wavelength of Balmer H_beta line: Pg:57 (2008)s
L_Hb = 6563e-010;    // Wavelength of H_beta line, m
R = 1.097e+07;    // Rydberg constant, per metre
L1 = 36/(5*R);    // Wavenumber of H_alpha line, per metre
L2 = 16/(3*R);    // Wavenumber of H_beta line, per metre
L_ratio = L2/L1;    // Ratio of wavelengths of H_beta and H_alpha lines
L2 = L_ratio*L1;    // Wavelength of Balmer H_beta line, m
printf("\nThe wavelength of Balmer H_beta line = %4d angstrom", L2/1e-010);
// Result
// The wavelength of Balmer H_beta line = 4861 angstrom 
