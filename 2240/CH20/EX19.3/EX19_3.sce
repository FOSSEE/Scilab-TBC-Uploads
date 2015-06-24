// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_3
clc; clear;
// How much is the inductance of a coil that induces 40 V when its current changes at the rate of 4 A/s?

// Given data

Vl = 40;    // Induced voltage=40 Volts
R = 4       // Current changing rate=di/dt=4 A/s

L = Vl/R;
disp (L,'The Value of Inductance in Henry')
