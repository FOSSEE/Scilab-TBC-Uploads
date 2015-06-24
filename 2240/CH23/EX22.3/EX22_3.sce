// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_3
clc; clear;
// If a 1-M Ohms R is added in series with the coil, how much will the time constant be for the higher resistance RL circuit?

// Given data

L = 20;        // Inductor=20 Henry
R = 1*10^6;    // Resistor=1 MOhms

T = L/R;
disp (T,'The Time Constant in Seconds')
disp ('i.e 20 us')
