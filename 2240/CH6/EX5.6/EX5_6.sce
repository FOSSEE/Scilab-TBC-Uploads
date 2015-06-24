// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_6
clc; clear;
// What Rx in parallel with 40 Ohms will provide an Req of 24 Ohms?

// Given data

R = 40;         // Resistance=40 Ohms
Req = 24;       // Equivqlent Resistance=24 Ohms

Rx = (R*Req)/(R-Req);
disp (Rx,'The Value of Rx in Ohms')
