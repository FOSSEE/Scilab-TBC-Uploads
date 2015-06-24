// Scilab code Exa4.13 : : Page 181 (2011)
clc; clear;
V = 2e-03;         // Voltage impulse, volt
C = 120e-012;    // Capacitance of the capacitor, F
e = 1.6e-019;    // Charge of the electron, C
n = C*V/(15*e);     // No. of electons
N = n^(1/10);     // No. of electrons in the output
printf("\nNo. of electrons in the output : %4.2f (approx)", N);

// Result
// No. of electrons in the output : 3.16 (approx) 