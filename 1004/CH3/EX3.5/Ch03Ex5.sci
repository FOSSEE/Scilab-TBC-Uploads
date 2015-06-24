// Scilab code: Ex3.5 : wavelength of a particle: Pg: 79 (2008)
h = 6.624e-034;    // Planck's constant, J-s
m = 9e-031;    // Mass of an electron, kg
U = 1.6e-017;    // Kinetic energy of an particle, joule
// Since U = (m*v^2)/2;    // Kinetic energy of a particle, joule
// such that v = sqrt(2*U/m);    // Velocity of the particle, m/s
L = h/sqrt(2*m*U);    // wavelength of a particle, m
printf("\nThe wavelength of a particle = %5.3f angstorm", L/1e-010);
// Result
// The wavelength of a particle = 1.234 angstorm  