// Scilab Code Ex9.2: De-broglie wavelength of an electron from kinetic energy : Page-203 (2010)
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the electron, kg
Ek = 10;    // Kinetic energy of electron, eV
// Ek = p^2/(2*m), solving for p
p = sqrt(2*m*Ek*e);    // Momentum of the electron, kg-m/s
lambda = h/p ;    // de-Broglie wavelength of electron from De-Broglie relation, m
printf("\nThe de-Broglie wavelength of electron = %4.2e nm", lambda/1e-009);

// Result
// The de-Broglie wavelength of electron = 3.88e-001 nm 