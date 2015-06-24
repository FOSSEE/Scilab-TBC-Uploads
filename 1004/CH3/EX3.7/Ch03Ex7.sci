// Scilab code: Ex3.7: de-Broglie wavelength of electrons: Pg: 80 (2008)
L_1 = 3e-07;    // Wavelength of ultraviolet light, m
L_0 = 4e-07;    // Threshold wavelength of ultraviolet light, m
m = 9.1e-031;    // Mass of an electron, kg
c = 3e+08;    // Velocity of light, m/s
h = 6.624e-034;    // Plancks constant, joule-second
U = h*c*(1/L_1-1/L_0);    // Maximum Kinetic energy of emitted electrons, joule
// since U = m*v^2/2, Kinetic energy of electrons, joule
// Thus v = sqrt(2*U/m), so that L_2 becomes
L_2 = h/sqrt(2*m*U);    // wavelength of electrons, m
printf("\nThe wavelength of the electrons = %3.1f angstorm", L_2/1e-010);
// Result
// The wavelength of the electrons = 12.1 angstorm 