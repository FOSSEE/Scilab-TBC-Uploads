// Scilab code: Ex3.2 : Wavelength of electrons: Pg: 78 (2008)
h = 6.6e-034;    // Planck's constant, J-s
m = 9.1e-031;    // mass of an electron, kg
e = 1.6e-019;    // Charge on an electron, coulomb
E = 100*e;    // Energy of beam of electrons, joule
// since E = (m*v^2)/2;    // Energy of beam of electron, joule
p = sqrt(2*m*E);    // Momentum of beam of electrons, kg-m/s
L = h/p;    // wavelength of a beam of electron, m
printf("\nThe wavelength of electrons = %4.2f angstorm", L/1e-010);
// Result
// The wavelength of electrons = 1.22 angstorm 