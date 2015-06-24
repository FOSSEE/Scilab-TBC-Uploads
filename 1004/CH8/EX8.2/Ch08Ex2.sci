// Scilab code: Ex8.2 : Wvelength of infrared absorption line: Pg: 185 (2008)
L1 = 4554;    // wavelength of the stokes line, angstorm
L2 = 4178;    // wavelength of antistokes line, angstorm
Lm = 2*L1*L2/[L1-L2];    // Wavelength of infrared absorption line, angstorm
printf("\nThe Wavelength of infrared absorption line = %5.3e angstorm", Lm);
// Result
// The Wavelength of infrared absorption line = 1.012e+005 angstorm 