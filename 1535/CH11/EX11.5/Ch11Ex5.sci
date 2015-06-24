// Scilab Code Ex11.5: Page-251 (2010)
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in free space, m/s
lambda = 1064e-009;    // Wavelength of laser light, m
P = 0.8;    // Average power output per laser pulse, W
dt = 25e-003;    // Pulse width of laser, s
E = P*dt;    // Energy released per pulse, J
N = E/(h*c/lambda);    // Number of photons in a pulse
printf("\nThe energy released per pulse = %2.0e J", E);
printf("\nThe number of photons in a pulse = %4.2e", N);

// Result
// The energy released per pulse = 2e-002 J
// The number of photons in a pulse = 1.07e+017 