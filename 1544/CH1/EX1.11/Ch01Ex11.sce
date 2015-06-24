// Scilab code Ex1.11:Pg 17 (2008)
clc; clear;
I = 200e-03;       // Electric current, A
t = 300;            // Time for which current flows, s
R = 750;            // Resistance, ohms
// Using Ohm's law, V = I*R
V = I*R;            // Electric potential difference, V
W = I^2*R*t;         // Energy dissipated, joule
printf("\nThe potential difference developed across the resistor = %3d V\nThe energy dissipated across the resistor = %4.0f J or %1d kJ", V, W, W*1e-03)

// Result
// The potential difference developed across the resistor = 150 V
// The energy dissipated across the resistor = 9000 J or 9 kJ
