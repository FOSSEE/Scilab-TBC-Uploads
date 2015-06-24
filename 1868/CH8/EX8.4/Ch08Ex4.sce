// Scilab code Ex8.4: Pg 270 (2005)
clc; clear;
R = 1.00;     // Radius of circle, m
T = 1.00;     // Time period of revolution, s
v = (2*%pi*R)/T;    // Speed of stone in its orbit, m/s
m = 1.00;     // Mass of stone, kg
L = m*v*R;    // Angular momentum of stone, kg-m^2/s
h_cross = 1.055e-34;    // Reduced Planck's constant, kg-m^2/s
l = L/h_cross;    // Orbtal quantum number
printf("\nThe orbtal quantum number for stone = %4.2fe+34", l*1e-34);

// Result
// Orbtal quantum number for stone = 5.96e+34
