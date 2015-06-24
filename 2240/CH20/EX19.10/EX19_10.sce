// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_10
clc; clear;
// If the two coils had a mutual inductance LM of 40 mH, how much would k be?

// Given data

L1 = 400*10^-3; // Coil Inductance 1=400 mH
L2 = 400*10^-3; // Coil Inductance 2=400 mH
Lm = 40*10^-3;  // Mutual inductance=40 mH

lt = sqrt(L1*L2);

k = Lm/lt;
disp (k,'The Coupling Coefficient k is')
