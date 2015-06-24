// Scilab code: Ex3.9 : Wavelength of matter waves: Pg: 81 (2008)
E = 2e-016;    // Energy of electrons, joule 
h = 6.624e-034;    // Planck's constant, J-s
m = 9.1e-031;    // mass of the electron, kg
// since E = (m*v^2)/2, the energy of an electron, joule
// such that v = sqrt(2*E/m);    // Velocity of electron, m/s
// As L = h/m*v, wavelength of the electron, m
// on solving for L in terms of E
L = h/sqrt(2*m*E);    // wavelength of the electron, m
printf("\nThe wavelength of the electron = %5.3f angstorm", L/1e-010);
// Result
// The wavelength of the electron = 0.347 angstorm