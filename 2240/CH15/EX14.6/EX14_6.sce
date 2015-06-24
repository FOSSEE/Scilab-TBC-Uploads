// Grob's Basic Electronics 11e
// Chapter No. 14
// Example No. 14_6
clc; clear;
// u = 630*10^-6 in SI units, calculate the flux density B that will be produced by the field intensity H equal to 1000 A.t/m.

// Given data

u = 630*10^-6;      // u=630 micro T/(A.t/m)
H = 1000;           // H=1000 A.t/m

B = u*H;
disp (B,'The Flux density in Tesla')
