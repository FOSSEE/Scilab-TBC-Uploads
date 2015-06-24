// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_7
clc; clear;
// Calculate Zin.

// Given data

rl = 909;           // Load resistance=909 Ohms
re = 3.35;          // Internal emitter resistance=3.35 Ohms
B = 100;            // Beta=100
R1 = 4.7*10^3;      // Resistance1=4.7 kOhms
R2 = 5.6*10^3;      // Resistance2=5.6 kOhms

Zibase = B*(re+rl);
A = (R1*R2)/(R1+R2);

Zin = (Zibase*A)/(A+Zibase);
disp (Zin,'The Input impedence in Ohms')
disp ('i.e 2.48 kOhms')
