// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_4
clc; clear;
// How much is the resistance of 100 ft of No. 23 gage copper wire?

// Given data

roh = 10.4;         // roh or specific resistance=10.4 (for Copper)
l = 100;            // Lenght=100 feet
A = 509.5;           // Area of No. 23 Gage=509.5 cmil

R = roh*(l/A);
disp (R,'The Resistance of 100 ft of No. 20 gage Copper Wire in Ohms')
