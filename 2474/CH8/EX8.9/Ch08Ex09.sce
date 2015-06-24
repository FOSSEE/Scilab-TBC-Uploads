// Scilab code Ex8.9: Pg.350 (2008)
clc; clear;
// For simplicity let h & f be unity
// At low temperatures
h = 1;     // Plank's constant, J-s
f = 1;    // Frequency, Hz
kT = 0.5*h*f;    // Product of Boltzman's constant & temperature, J
n = 1;    // Integer value
f_1_0 = exp(-(h*f)/kT);    // Ratio of fraction of oscillators in first excited state to that in ground state
printf("\nThe ratio of fraction of oscillators in first excited state to that in ground state = %5.3f", f_1_0);

// At high temeratures
kT = 4*h*f;
f_1_0 = exp(-(h*f)/kT);    // Ratio of fraction of oscillators in first excited state to that in ground state
printf("\nThe ratio of fraction of oscillators in first excited state to that in ground state = %5.3f", f_1_0);

// Result
// The ratio of fraction of oscillators in first excited state to that in ground state = 0.135
// The ratio of fraction of oscillators in first excited state to that in ground state = 0.779 