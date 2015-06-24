// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_2
clc; clear;
// A stranded wire is made up of 16 individual strands of No. 27 gage wire. What is its equivalent gage size in solid wire?

// Given data

N = 16;         // No. of strands=16
A27 = 201.5     // Circular area of No. 27 Guage wire=201.5 cmils

A = N*A27;
disp (A,'The Total Area in cmils')

disp ('The Circular Area of 3224 cmils corresponds very closely to the cmil area of No. 15 gage wire. Therefore, 16 strands of No. 27 gage wire is roughly equivalent to No. 15 gage solid wire.')
