// Scilab Code Ex8.3: Page-285 (2014)
clc; clear;
delta_E = 2e-003;    // Energy difference for the 3p subshell of sodium, eV
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
c = 3.00e+008;    // Speed of light in vacuum, m/s
lambda = 589.3;    // Wavelength of spectral line, nm
// As delta_E = h*c/lambda^2*delta_lambda, solving for delta_lambda
delta_lambda = lambda^2*e/(h*c*1e+009)*delta_E;    // Splitting of 3p subshell of sodium, nm
printf("\nThe splitting of 3p subshell of sodium = %3.1f nm", delta_lambda);

// Result
// The splitting of 3p subshell of sodium = 0.6 nm 