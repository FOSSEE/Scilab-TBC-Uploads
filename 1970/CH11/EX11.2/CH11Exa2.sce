// Scilab code Exa11.2 : : Page-536 (2011)
clc; clear;
s = 15;        // Speed, metre per sec
w = 0.3;        // Width of the electrode, metre
E = 3e+06;        // Breakdown strength, volts per metre
eps = 8.85e-12;    // Absolute permitivity of free space, farad per metre
C = 111e-12;        // Capacitance, farad
i = round (2*eps*E*s*w*10^6);    // Current, micro ampere
V = i/C*10^-12;            // Rate of rise of electrode potential, mega volts per sec
printf("\nThe charging current = %d micro-ampere \nThe rate of rise of electrode potential = %4.2f MV/sec", i, V);

// Result
// The charging current = 239 micro-ampere 
// The rate of rise of electrode potential = 2.15 MV/sec 