// Scilab code: Ex6.6 : Minimum wavelength emitted by an X-ray tube : Pg: 157 (2008)
h = 6.625e-034;    // Planck's constant, Js
c = 3e+08;    // Velocity of light, m/s
e = 1.6e-019;    // Charge of an electron, coulombs
V = 4.5e+04;    // Accelerating potential of X-ray tube, volt
// Since e*V = h*c/L_min;    // Energy required by an electron to move through a potential barrier of one volt, joules
// solving for L_min
L_min = h*c/(V*e);    // Minimum wavelength emitted by an X-ray tube, m
printf("\nThe minimum wavelength emitted by the X-ray tube = %5.3f angstrom", L_min/1e-010);
// Result
// The minimum wavelength emitted by the X-ray tube = 0.276 angstrom 