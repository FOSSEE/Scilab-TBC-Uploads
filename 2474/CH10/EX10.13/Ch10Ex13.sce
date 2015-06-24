// Scilab code Ex10.13: Pg.468 (2008)
clc; clear;
e = 1.602e-19;    // Electronic charge, C
h = 6.616e-34;    // Planck's constant, J-s
V = 1e-06;    // Applied voltage, V
f = 2*e*V/h;    // Frequency of Josephson current, Hz
printf("\nThe frequency of Josephson current = %5.3e Hz or %5.1f MHz", f, f*1e-6);

// Result
// The frequency of Josephson current = 4.843e+008 Hz or 484.3 MHz 