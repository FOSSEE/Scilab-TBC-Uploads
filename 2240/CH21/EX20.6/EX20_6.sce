// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_6
clc; clear;
// Calculate L of a coil that has 15,700 Ohms of Xl at 12 MHz.

// Given data

Xl = 15700;    // Inductive reactance=15700 Ohms
f = 12*10^6;   // Frequency=12 MHz
pi = 3.14;

L = Xl/(2*pi*f);
disp (L,'The value of Inductor in Henry')
disp ('i.e Appox 208.8*10^-6 OR 208.8 uH')
