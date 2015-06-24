// Scilab Code Ex8.5 Calculation of wavelength of copper using Moseley's law Page-256 (2010)
c = 3.0e+08;    // Speed of light, m/s
lambda_W = 210e-010;    // Wavelength of K_alpha line of W, m
Z_W = 74;    // Atomic number of tungsten
Z_Cu = 29;    // Atomic number of copper
b = 1;    // Constant for K-series
// f_W = c/lambda_W = (a*73)^2, The frequency K_alpha line for tungsten, Hz
// f_Cu = c/lambda_Cu = (a*28)^2, The frequency K_alpha line for copper, Hz
// Dividing f_W by f_Cu and solving for lambda_Cu
lambda_Cu = ((Z_W-b)/(Z_Cu-b))^2*lambda_W; // Wavelength of K_alpha line of Cu, m
printf("\nThe wavelength of K_alpha line of copper = %4.0f angstrom", lambda_Cu/1D-10);
// Result
// The wavelength of K_alpha line of copper = 1427 angstrom