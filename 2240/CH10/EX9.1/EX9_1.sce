// Grob's Basic Electronics 11e
// Chapter No. 09
// Example No. 9_1
clc; clear;
// Apply Kirchhoff’s current law to solve for the unknown current, I3.

// Given data

I1 = 2.5;     // Branch 1 Current=2.5 Amps
I2 = 8;       // Branch 2 Current=8 Amps
I4 = 6;       // Branch 3 Current=6 Amps
I5 = 9;       // Branch 4 Current=9 Amps

// I1+I2+I3-I4-I5 = 0 Sum of all currents at node is ZERO
// I1+I2+I3 = I4+I5 Total Incomming Current = Total Outgoing Current

I3 = I4+I5-I1-I2;
disp (I3,'The Branch 3 Current I3 in Amps')
