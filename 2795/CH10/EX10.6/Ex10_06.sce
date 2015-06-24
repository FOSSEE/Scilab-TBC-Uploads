// Scilab Code Ex10.6 : Page-366 (2014)
clc; clear;
mu_B = 9.27e-024;    // Bohr's magneton, J/T
B = 0.50;    // Applied magnetic field, T
k = 1.38e-023;    // Boltzmann constant, J/K
T = 10*mu_B*B/k;    // Temperature at which mu*B = 0.1k*T, K
b_muB = mu_B*B/(k*T);
ratio = b_muB/tanh(b_muB);    // Ratio of b_muB and tanh(b_muB)
if (ratio - 1) < 0.01 then
    printf("\nThe value of T = %4.2f K is suiable as a classical temperature.", T);
else
    printf("\nThe value of T = %4.2f K is not suiable as a classical temperature.", T);
end
// For higher temperature
T = 100;    // Given temperature
b_muB = mu_B*B/(k*T);
ratio = b_muB/tanh(b_muB);    // Ratio of b_muB and tanh(b_muB)
if (ratio - 1) < 0.001 then
    printf("\nAt the value of T = %4.2f K, the approximation is an excellent one.", T);
else
    printf("\nAt the value of T = %4.2f K, the approximation is not an excellent.", T);
end

// Result
// The value of T = 3.36 K is suiable as a classical temperature.
// At the value of T = 100.00 K, the approximation is an excellent one. 