// Scilab code Ex12.3: Pg 436 (2005)
clc; clear;
e_V = 1;    // Energy applied to diode, eV
k_B_T = 0.025;   // Product of Boltzmann constant and temperature, eV
// For simplicity let (q*V)/(k_B*T) = x
x = (e_V/(k_B_T));
I_f_r = (exp(x)-1)/(exp(-x)-1);   // Ratio of forward current to reverse current in diode
printf("\nThe ratio of forward current to reverse current in diode = %3.1fe+17", I_f_r*1e-17);

// Result
// The ratio of forward current to reverse current in diode = -2.4e+17 