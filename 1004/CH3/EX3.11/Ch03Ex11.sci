// Scilab code: Ex3.11 : Wavelength of an electron: Pg: 82 (2008)
U = 1.6e-013;    // Kinetic energy of the electron, joule 
h = 6.624e-034;    // Planck's constant, J-s
m = 9.1e-031;    // Mass of the electron, kg
v = sqrt(2*U/m);    // Velocity of the electron, m/s
L = h/(m*v);    // Wavelength of the electron, m
printf("\nThe wavelength of an electron = %5.3e angstorm", L/1e-010);
// Result
// The wavelength of an electron = 1.228e-002 angstorm 