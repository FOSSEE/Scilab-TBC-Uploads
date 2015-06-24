// Grob's Basic Electronics 11e
// Chapter No. 13
// Example No. 13_4
clc; clear;
// Make the following conversions: (a) 0.003 T to G; (b) 15,000 G to T.

// Given data

A = 0.003;          // A=0.003 Tesla
B = 15000;          // B=15000 Guass
C = 1*10^4;         // Conversion Factor

G = A*C;
disp (G,'The 0.003 Tesla in Guass is')

T = B*(1/C);
disp (T,'The 15,000 Guass in Tesla is')
