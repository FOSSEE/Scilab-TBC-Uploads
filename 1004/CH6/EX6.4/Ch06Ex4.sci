// Scilab code: Ex6.4 : Wavelength limit of X-rays : Pg: 157 (2008)
V = 20000;    // Potential difference, volt
h = 6.624e-034;    // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
// Since e*V = h*c/L;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for L
L = h*c/(e*V);    // Wavelength limit of X-rays, m
printf("\nShort wavelength limit of X-ray = %6.4f angstorm", L/1e-010);
// Result
// Short wavelength limit of X-ray = 0.6210 angstorm 