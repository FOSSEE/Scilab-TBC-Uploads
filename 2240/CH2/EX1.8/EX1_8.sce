// Grob's Basic Electronics 11e
// Chapter No. 01
// Example No. 1_8
clc; clear;
// Calculate the resistance for the following conductance values: (a) 0.05 S (b) 0.1 S

// Given data

G1 = 0.05;      // G1=0.05 Siemins
G2 = 0.1;      // G1=0.1 Siemins

R1 = 1/G1;
disp (R1,'The Resistance for Conductance value 0.05 S in Ohms')

R2 = 1/G2;
disp (R2,'The Resistance for Conductance value 0.1 S in Ohms')
