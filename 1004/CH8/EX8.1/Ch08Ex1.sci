// Scilab code: Ex8.1 : Stokes and anti stokes wavelength: Pg: 184 (2008)
c = 3e+08;    // Speed of light, m/s
Lo = 2537e-010;    // Wavelength of the exciting line, metre
Ls = 2683e-010;    // Wavelength of stokes line, metre
Lm = (Ls * Lo)/(Ls - Lo);    // Raman shift, per m
printf("\nThe Raman shift = %5.3e per cm", 1/Lm*1e-02);
Lo1 = 5461e-010;    // Wavelength of exciting line for stokes wavelength, metre
Ls = (Lm * Lo1)/(Lm - Lo1);    // Stokes wavelength for the new exciting line, metre
Las = (Lm * Lo1)/(Lm + Lo1);    // Anti-Stokes wavelength for the new exciting line, metre
printf("\nThe stokes wavelength for the new exciting line = %4d angstrom", Ls/1e-010);
printf("\nThe anti-stokes wavelength for the new exciting line = %4d angstrom", Las/1e-010);
// Result
// The Raman shift = 2.145e+003 per cm
// The stokes wavelength for the new exciting line = 6185 angstrom
// The anti-stokes wavelength for the new exciting line = 4888 angstrom 