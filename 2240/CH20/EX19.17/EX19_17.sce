// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_17
clc; clear;
// Calculate the turns ratio Np/Ns that will produce a reflected primary impedance Zp of (a) 75 Ohms; (b) 600 Ohms.

// Given data

Zs = 300;   // Secondary impedence=300 Ohms
Zp1 = 75;   // Primary impedence=75 Ohms
Zp2 = 600;  // Primary impedence=600 Ohms

tra = sqrt (Zp1/Zs);
disp (tra,'The Turns ratio Np/Ns is')
disp ('OR 1/2')

trb = sqrt (Zp2/Zs);
disp (trb,'The Turns ratio Np/Ns is 1.414/1 or')
