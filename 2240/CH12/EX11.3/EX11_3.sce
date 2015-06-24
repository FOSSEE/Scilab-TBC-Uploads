// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_3
clc; clear;
// How much is the resistance of 100 ft of No. 20 gage copper wire?

// Given data

roh = 10.4;         // roh or specific resistance=10.4 (for Copper)
l = 100;            // Lenght=100 feet
A = 1022;           // Area of No. 20 Gage=1022 cmil

R = roh*(l/A);
disp (R,'The Resistance of 100 ft of No. 20 gage Copper Wire in Ohms')
disp ('i.e 1.02 Ohms')
