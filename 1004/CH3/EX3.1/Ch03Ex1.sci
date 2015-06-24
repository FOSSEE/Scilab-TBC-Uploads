// Scilab code: Ex3.1 : Kinetic energy of an electron: Pg: 77 (2008)
h = 6.6e-034;    // Planck's constant, J-s
m = 9.1e-031;    // mass of an electron, kg
L = 9e-010;    // wavelength of an electron, m
// since E = (m*v^2)/2, Energy of an electron, joule
// thus v = sqrt(2*E/m), solving for L in terms of E, we have
// L = h/sqrt(2*m*E), wavelength of an electron, m
// On solving for E
E = h^2/(2*m*L^2)
printf("\nThe kinetic energy of an electron = %6.4f eV", E/1.6e-019);
// Result
// The kinetic energy of an electron = 1.8468 eV 