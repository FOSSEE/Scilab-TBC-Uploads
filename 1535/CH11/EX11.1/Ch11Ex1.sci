// Scilab Code Ex11.1: Page-249 (2010)
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in free space, m/s
k = 1.38e-023;    // Boltzmann constant, J/K
T = 300;    // Temperature at absolute scale, K
lambda = 5500e-010;    // Wavelength of visible light, m
rate_ratio = exp(h*c/(lambda*k*T))-1;    // Ratio of spontaneous emission to stimulated emission
printf("\nThe ratio of spontaneous emission to stimulated emission for visible region = %1.0e", rate_ratio);
lambda = 1e-02;    // Wavelength of microwave, m
rate_ratio = exp(h*c/(lambda*k*T))-1;    // Ratio of spontaneous emission to stimulated emission
printf("\nThe ratio of spontaneous emission to stimulated emission for microwave region = %6.4f", rate_ratio);

// Result
// The ratio of spontaneous emission to stimulated emission for visible region = 8e+037
// The ratio of spontaneous emission to stimulated emission for microwave region = 0.0048