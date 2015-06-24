// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_6
clc; clear;
// Calculate the minimum base reisitance Rb, necessary to provide clamping action

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
fr = 2*10^6;        // Resonant Frequency=2 MHertz

fin = fr
T = 1/fin

Rb = 10*T/C
disp (Rb,'The Minimum Base Reisitance Rb to Provide Clamping Action in Ohms')
