// Scilab code: Ex6.3 : Short wavelength limit : Pg: 156 (2008)
V = 50000;    // Potential difference, volts
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
// Since e*V = h*c/L;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for L
L = h*c/(e*V);    // Short wavelength limit of X-ray, m
printf("\nShort wavelength limit of X-ray = %6.4f angstorm", L/1e-010);
// Result
// Short wavelength limit of X-ray = 0.2484 angstorm 