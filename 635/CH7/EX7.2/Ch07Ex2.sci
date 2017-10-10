// Scilab Code Ex7.2 Comparison of frequency of waves in a monoatomic and diatomic linear systems: Page-238 (2010)
a = 2.5e-010;    // Interatomic spacing between two identical atoms, m
v0 = 1e+03;    // Velocity of sound in the solid, m/s
lambda = 10e-010;    // Wavelength of the sound wave, m
omega = v0*2*%pi/lambda;    // Angular frequency of sound wave in a monoatomic lattice, rad per sec
printf("\nThe frequency of sound waves in a monoatomic lattice = %4.2e rad/sec", omega);
// For acoustic waves in a diatomic lattice (M = m), the angular frequency, omega = 0 at k = 0 and
// omega = (2*K/m)^(1/2)    --- (i)    at k = %pi/(2*a)
// As v0 = a*(2*K/m)^(1/2)    --- (ii)
// From (i) and (ii), we have
omega_min = 0;    // Angular frequency of acoustic waves at k = 0, rad per sec
omega_max = v0/a;    // Angular frequency of acoustic waves at k = %pi/(2*a), rad per sec
printf("\n\nThe frequency of acoustic waves wave in a diatomic lattice :\n %d rad/sec for k = 0 \n %1.0e rad/sec for k = pi/(2*a)", omega_min, omega_max);
// For optical waves in a diatomic lattice (M = m), the angular frequency 
// omega = sqrt(2)*(2*K/m)^(1/2)    --- (iii)    at k = 0
// As v0 = a*(2*K/m)^(1/2)    --- (iv)
// From (iii) and (iv), we have
omega_max = sqrt(2)*v0/a;    // Angular frequency of optical waves at k = 0, rad per sec
// For optical waves in a diatomic lattice (M = m), the angular frequency 
// omega = (2*K/m)^(1/2)    --- (iii)    at k = %pi/(2*a)
// As v0 = a*(2*K/m)^(1/2)    --- (iv)
// From (iii) and (iv), we have
omega_min = v0/a;    // Angular frequency of optical waves at k = %pi/(2*a), rad per sec
printf("\n\nThe frequency of optical swaves wave in a diatomic lattice :\n %4.2e rad/sec for k = 0 \n %1.0e rad/sec for k = pi/(2*a)", omega_max, omega_min);
// Result 
// The frequency of sound waves in a monoatomic lattice = 6.28e+012 rad/sec

// The frequency of acoustic waves wave in a diatomic lattice :
// 0 rad/sec for k = 0 
// 4e+012 rad/sec for k = pi/(2*a)

// The frequency of optical swaves wave in a diatomic lattice :
// 5.66e+012 rad/sec for k = 0 
// 4e+012 rad/sec for k = pi/(2*a)