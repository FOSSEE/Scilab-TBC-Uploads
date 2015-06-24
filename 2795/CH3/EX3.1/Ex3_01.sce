// Scilab Code Ex3.1: Page-87 (2013)
clc; clear
E = 1.2e+004;    // Electric field, V/m
B = 8.8e-004;    // Magnetic field, T
l = 0.05;    // Length of the deflection plates, m
v0 = E/B;    // Initial velocity of the electron, m/s
theta = 30;    // Angular deflection of the electron, degrees
q_ratio_m = E*tand(theta)/(B^2*l);    // Specific charge of the electron, C/kg
printf("\nThe initial velocity of the electron = %3.1e m/s", v0);
printf("\nThe specific charge of the electron = %3.1e C/kg", q_ratio_m);

// Result 
// The initial velocity of the electron = 1.4e+007 m/s
// The specific charge of the electron = 1.8e+011 C/kg 