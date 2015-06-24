6// Scilab code: Ex3.12: De-Broglie wavelength of thermal neutrons:Pg: 82 (2008)
m = 1.6749e-027;    // Mass of neutron, kg
h = 6.624e-034;    // Plancks constant, joule second
k = 1.38e-021;    // Boltzmann constant, joule per kelvin
T = 300;    // Temperature of thermal neutrons, kelvin
// Since m*v^2/2 = (3/2)*k*T;    // Energy of neutron, joule
v = sqrt(3*k*T/m);    // Velocity of neutrons, m/s
L = h/(m*v);    // Wavelength of neutrons, m
printf("\nThe de-Broglie wavelength of thermal neutrons = %5.3f angstorm ", L/1e-010);
// Result
// The de-Broglie wavelength of thermal neutrons = 0.145 angstorm 