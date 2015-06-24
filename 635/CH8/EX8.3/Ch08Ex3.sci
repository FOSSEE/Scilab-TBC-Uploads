// Scilab Code Ex8.3 Calculation of wavelength of characteristic X-rays Page-253 (2010)
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in free space, m/s
e = 1.602e-019;    // Charge on an electron, coulomb
E_K = -78;    // Energy of K shell for platinum, keV
E_L = -12;    // Energy of L shell for platinum, keV
E_M = -3 ;    // Energy of M shell for platinum, keV
E_K_alpha = E_L - E_K;    // Energy of K_alpha line, keV
E_K_beta = E_M - E_K;    // Energy of K_beta line, keV
// We have E = h*f, where f = c/Lambda this implies E = h*c/lambda
// Solving for Lambda
// Lambda = h*c/E
lambda_K_alpha = h*c/(E_K_alpha*e*1e+03);    // Wavelength of K_alpha line, metre
lambda_K_beta = h*c/(E_K_beta*e*1e+03);    // Wavelength of K_beta line, metre
printf("\nThe wavelength of K_alpha line = %4.2f angstrom", lambda_K_alpha/1D-10);
printf("\nThe wavelength of K_beta line  = %4.2f angstrom", lambda_K_beta/1D-10);
// Result
// The wavelength of K_alpha line = 0.19 angstrom
// The wavelength of K_beta line  = 0.17 angstrom
