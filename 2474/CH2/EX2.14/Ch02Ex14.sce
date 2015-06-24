// Scilab code Ex2.14: Pg.95 (2008)
clc; clear;
E = 30;    // Energy of electron, MeV
B = 0.05;    // Magnetic field, tesla
// For simplicity let c be unity
c = 1;    // Velocity of light, m/s
p = E/c;    // Momentum of electron, MeV/c
R = p/(300*B);    // Radius of the path, m
printf("\nThe radius of the path of the electron moving in magnetic field = %1d m",R);

// Result
// The radius of the path of the electron moving in magnetic field = 2 m 