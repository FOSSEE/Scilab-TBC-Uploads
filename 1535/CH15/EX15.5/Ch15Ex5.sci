// Scilab Code Ex15.5: Page-324 (2010)
T = 1;    // For simplicity assume temperature to be unity, K
R = 1;    // For simplicity assume molar gas constant to be unity, J/mol/K
theta_E = T;    // Einstein temperature, K
C_V = 3*R*(theta_E/T)^2*exp(theta_E/T)/(exp(theta_E/T)-1)^2;    // Einstein lattice specific heat, J/mol/K
printf("\nThe Einstein lattice specific heat, C_v = %4.2f X 3R", C_V/3);

// Result
// The Einstein lattice specific heat, C_v = 0.92 X 3R