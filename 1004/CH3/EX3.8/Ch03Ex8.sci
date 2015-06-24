// Scilab code: Ex3.8 : de-Broglie wavelength of accelerated electrons:Pg: 80 (2008)
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Charge on an electron, Coulamb
h = 6.624e-034;    // Plancks constant, joule second
V = 1;    // For simplicity, we assume retarding potential to be unity, volt
// Since  e*V = (m*v^2)/2;    // Energy of electron, joule
v = sqrt(2*e*V/m);    // Velocity of electrons, m/s
L = h/(m*v);    // Wavelength of electrons, m
printf("\nThe de-Broglie wavelength of accelerated electrons = %5.2f/sqrt(V) ", L/1e-010);
// Result
// The de-Broglie wavelength of accelerated electrons = 12.28/sqrt(V)