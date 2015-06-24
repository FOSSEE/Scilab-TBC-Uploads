// Grob's Basic Electronics 11e
// Chapter No. 25
// Example No. 25_1
clc; clear;
// Calculate the resonant frequency for an 8-H inductance and a 20-uF capacitance.

// Given data

L = 8;              // L=8 Henry
C = 20*10^-6;       // C=20 uFarad

fr = 1/(2*%pi*sqrt(L*C));
disp (fr,'The resonant frequency in Hertz')
disp ('Appox 12.6 Hertz')
