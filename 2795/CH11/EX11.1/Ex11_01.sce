// Scilab Code Ex11.1 : Page-399 (2014)
clc; clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J
k = 1.38e-023;    // Boltzmann constant, J/K
T = 293;    // Room temperature, K
dE = [0.10, 1.0, 10.0];    // Energies above the valence band, eV
F_FD = zeros(3);
for i = 1:1:3
    F_FD(i) = 1/(exp(dE(i)*e/(k*T)) + 1);
    printf("\nFor E - E_F = %4.2f eV, F_FD = %4.2e", dE(i), F_FD(i));
end

// Result
// For E - E_F = 0.10 eV, F_FD = 1.88e-002
// For E - E_F = 1.00 eV, F_FD = 6.53e-018
// For E - E_F = 10.00 eV, F_FD = 1.40e-172 