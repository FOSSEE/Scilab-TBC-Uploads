// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_8
clc; clear;
// A 10-H inductance L1 on an iron core produces 4 Wb of magnetic flux. Another coil L2 is on the same core. How much is k between L1 and L2?

// Given data

lf1 = 4; // Magnetic flux of coil L1=4 Wb
lf2 = 4; // Magnetic flux of coil L2=4 Wb

k = lf2/lf1;
disp (k,'The Coefficient of Coupling k between Coil L1 and Coil L2 is')
