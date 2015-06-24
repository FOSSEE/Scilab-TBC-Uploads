// Scilab code: Ex7.2: bond Length of carbon monoxide: Pg: 170 (2008)
h = 6.626e-034;    // Planck's constant, Js
c = 2.997e+010;    // Speed of light, cm/s
B = 1.921;    // Rotational constant for CO, per cm
nu_bar = 2*B;    // Wavenumber of first line in rotation spectra of CO, per cm
mu = 11.384e-027;    // Reduced mass of the CO system, per cm
I = 2*h/(8*%pi^2*nu_bar*c);    // Moment of inertia of CO molecule about the axis of rotation, kg-m/s
r = sqrt(I/mu);    // Bond length of CO molecule, m
printf("\nThe bond length of CO molecule = %5.2f angstrom", r/1e-010);
// Result
// The bond length of CO molecule =  1.13 angstrom 