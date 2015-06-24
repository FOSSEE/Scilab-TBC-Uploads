// Grob's Basic Electronics 11e
// Chapter No. 13
// Example No. 13_3
clc; clear;
// With a flux of 400 uWb through an area of 0.0005 sqm, what is the flux density B in tesla units?

// Given data

A = 0.0005;          // Area=0.0005 sqm
flux = 400*10^-6;    // Total Flux=400 uWb

B = flux/A;
disp (B,'The Flux Density in Tesla (T)')
