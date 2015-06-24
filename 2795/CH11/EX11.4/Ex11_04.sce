// Scilab Code Ex11.4: Page-408 (2014)
clc; clear;
e = 1.602e-019;    // Energy equivalent of 1 eV, J
k = 1.38e-023;    // Boltzmann constant, J/K
T = 293;    // Room temperature, K
V_f = 0.200;    // Forward voltage, V
I_f = 50e-003;    // Forward current, A
V_r = -0.200;    // Reverse voltage, V
I_r = I_f*(exp(e*V_r/(k*T))-1)/(exp(e*V_f/(k*T)) - 1);    // Reverse current from diode equation, A
printf("\nThe reverse current through pn-juntion diode = %2d micro-ampere", I_r/1e-006);

// Result
// The reverse current through pn-juntion diode = -18 micro-ampere 