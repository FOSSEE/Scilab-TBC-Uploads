// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_7
clc; clear;
// Calculate the 5-V power bandwidth.

// Given data

Vo = 10;            // Output voltage=10 Volts(p-p)
Sr = 0.5/10^-6;     // Slew rate=0.5 V/us

Vpk = Vo/2;

fo = Sr/(2*%pi*Vpk);
disp (fo,'The Output Frequency in Hertz')
disp ('i.e 15.915 kHz')
