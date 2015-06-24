// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_7
clc; clear;
// A coil L1 produces 80 uWb of magnetic flux. Of this total flux, 60 uWb arelinked with L2. How much is k between L1 and L2?

// Given data

lf1 = 80*10^-6; // Magnetic flux of coil L1=80 uWb
lf2 = 60*10^-6; // Magnetic flux of coil L2=60 uWb

k = lf2/lf1;
disp (k,'The Coefficient of Coupling k between Coil L1 and Coil L2 is')
