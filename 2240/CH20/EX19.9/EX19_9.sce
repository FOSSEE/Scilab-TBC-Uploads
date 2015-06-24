// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_9
clc; clear;
// Two 400-mH coils L1 and L2 have a coefficient of coupling k equal to 0.2. Calculate Lm.

// Given data

L1 = 400*10^-3; // L1=400 mH
L2 = 400*10^-3; // L2=400 mH
k = 0.2;        // Coupling coefficient=0.2

Lm = k*sqrt(L1*L2);
disp (Lm,'The mutual inductance in Henry')
disp ('i.e 80*10^-3 H OR 80 mH')
