// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_3
clc; clear;
// Calculate fmax for an op amp that has an Sr of 5 V/us and a peak output voltage of 10 V.

// Given data

Vpk = 10;       // Peak output voltage=10 Volts
Sr = 5/10^-6;   // Slew rate=5 V/us
pi = 3.14;      // JI=3.14

fo = Sr/(2*pi*Vpk);
disp (fo,'The Output Frequency in Hertz')
disp ('i.e 79.6 kHz')
