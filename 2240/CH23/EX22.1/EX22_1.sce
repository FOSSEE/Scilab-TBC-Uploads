// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_1
clc; clear;
// What is the time constant of a 20-H coil having 100 Ohms of series resistance?

// Given data

L = 20;     // Inductor=20 Henry
R = 100;    // Resistor=100 Ohms

T = L/R;
disp (T,'The Time Constant in Seconds')
