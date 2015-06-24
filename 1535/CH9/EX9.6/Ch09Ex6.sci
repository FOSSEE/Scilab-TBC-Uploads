// Scilab Code Ex9.6: Width of spectral line from Uncertainty principle: Page-204 (2010)
c = 3e+008;    // Speed of light, m/s
dt = 1e-008;    // Average lifetime, s
lambda = 400e-009;    // Wavelength of spectral line, m
// From Heisenberg uncertainty principle,
// dE = h_bar/(2*dt) and also dE = h*c/lambda^2*d_lambda, which give
// h_bar/(2*dt) = h*c/lambda^2*d_lambda, solving for d_lambda
d_lambda = lambda^2/(4*%pi*c*dt);    // Width of spectral line, m
printf("\nThe width of spectral line = %4.2e m", d_lambda);

// Result
// The width of spectral line = 4.24e-015 m 