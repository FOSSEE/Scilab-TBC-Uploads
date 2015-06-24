// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_6
clc; clear;
// Calculate C for two plates, each with an area 2 sqm, separated by 1 cm with a dielectric of air.

// Given data

c = 8.85*10^-12;    // Constant=8.85 p
A = 2;              // Area=2 sqm
d = 1*10^-2;        // Distance=1 cm
K = 1               // Permeability=1

C = K*c*(A/d);
disp (C,'The Capacitance in Farad')
disp ('i.e 1700*10^-12 F OR 1770 pF')
