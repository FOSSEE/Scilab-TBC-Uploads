// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_5
clc; clear;
// Calculate L of the coil when the frequency is 1000 Hz.

// Given data

Xl = 6280;      // Inductive reactance=6280 Ohms
f = 1000;       // Frequency=1000 Hz
pi = 3.14;

L = Xl/(2*pi*f);
disp (L,'The value of Inductor in Henry')
