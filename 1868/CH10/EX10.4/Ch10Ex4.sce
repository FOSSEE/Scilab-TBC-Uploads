// Scilab code Ex10.4: Pg 356 (2005)
clc; clear;

// Part (a)
k_B = 8.62e-05;   // Boltzmann constant, eV/K
T_E = 1300;    // Temperature, K
h_cross = 6.58e-16;   // Reduced plank's constant, eV-s
omega = (k_B*T_E)/h_cross;    // Frequency of vibration of carbon atom in diamond, Hz
spacing = (h_cross*omega);   // Spacing between adjacent oscillator energy level, eV
printf("\nFrequency of vibration of carbon atom in diamond = %4.2e Hz", omega);
printf("\nSpacing between adjacent oscillator energy level = %5.3f eV", spacing);

// Part (b)
T_R = 300;    // Room temperature, K
p = exp((h_cross*omega)/(k_B*T_R));  // For simplication
E_R = (h_cross*omega)/(p-1);   // Average energy of oscillator at room temperature, eV
T = 1500;   // Temperature, K
q = exp((h_cross*omega)/(k_B*T));    // For simplication
E_bar = (h_cross*omega)/(q-1);    // Average energy at 1500 K, eV
printf("\nAverage energy of oscillator at room temperature = %7.5f eV", E_R);
printf("\nAverage oscillator energy at %4d K = %7.5f eV", T, E_bar);


// Result
// Frequency of vibration of carbon atom in diamond = 1.70e+14 Hz
// Spacing between adjacent oscillator energy level = 0.112 eV
// Average energy of oscillator at room temperature = 0.00149 eV
// Average oscillator energy at 1500 K = 0.0813 eV
