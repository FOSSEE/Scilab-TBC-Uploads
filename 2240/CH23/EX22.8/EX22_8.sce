// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_8
clc; clear;
// If a 1-M Ohms resistance is added in series with the capacitor 0.01-uF and resistor 1-M Ohms in, how much will the time constant be?

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
R = 2*10^6;         // Resistor= 2 MOhms 

T = C*R;
disp (T,'The Time Constant in Seconds')
