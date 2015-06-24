// Grob's Basic Electronics 11e
// Chapter No. 11
// Example No. 11_1
clc; clear;
// What is the area in circular mils of a wire with a diameter of 0.005 in.?

// Given data

Din = 0.005;        // Diameter in Inches=0.005 in.
Dmil = 5;           // Diameter in Mils=5 mil.

// 0.005 in. = 5 mil
// Therefore: Din == Dmil

A = Dmil*Dmil;
disp (A,'The Circular Area in cmils')
