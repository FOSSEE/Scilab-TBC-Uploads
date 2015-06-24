// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_5
clc; clear;
// How much is the self-induced voltage across a 4-H inductance produced by a current change of 12 A/s?

// Given data

L = 4;    // Inductor=4 H
R = 12;   // current change=di/dt=12 A/s

Vl = L*R;
disp (Vl,'The Value of Self-Induced Voltage in Volts')
