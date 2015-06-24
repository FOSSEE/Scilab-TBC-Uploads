// Scilab Code Ex4.9: Page-150 (2013)
clc; clear
R = 1.0974e+007;    // Rydberg constant, per metre
Z = 3;    // Atomic number of Li
n_l = 1;    // Lower orbit of Li++ ion
n_u = %inf;    // Limiting orbit of Li++ ion
lambda = 1/(Z^2*R*(1/n_l^2-1/n_u^2)*1e-009);    // The shortest wavelentgh emitted by Li++ ion, nm
printf("\nThe shortest wavelentgh emitted by Li++ ion = %4.1f nm", lambda);

// Result
// The shortest wavelentgh emitted by Li++ ion = 10.1 nm 