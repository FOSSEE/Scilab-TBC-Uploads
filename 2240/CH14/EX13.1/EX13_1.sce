// Grob's Basic Electronics 11e
// Chapter No. 13
// Example No. 13_1
clc; clear;
// Make the following conversions: (a) 25,000 Mx to Wb; (b) 0.005 Wb to Mx.

// Given data

A = 25000;          // A=25000 Maxwell
B = 0.005;          // B=0.005 Wabers
C = 1*10^8;         // Conversion Factor

Wb = A*(1/C);
disp (Wb,'The 25000 Maxwell in Wabers is')
disp ('i.e 250*10^-6 Wb or 250 uWb')

Mx = B*C;
disp (Mx,'The 0.005 Wabers in Maxwell is')
disp ('i.e 5.0*10^5 Mx')
