// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_2
clc; clear;
// Calculate the resonant frequency for a 2-uH inductance and a 3-pF capacitance.

// Given data

L = 2*10^-6;       // Inductor=2 uHenry
C = 3*10^-12;      // Capacitor=3 pFarad
pi = 3.14;

fr = 1/(2*pi*sqrt(L*C));
disp (fr,'The resonant frequency in Hertz')
disp ('i.e 65 MHz')
