// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_4
clc; clear;
// What is the time constant of a 0.01-uF capacitor in series with a 1-M Ohmsresistance?

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
R = 1*10^6;         // Resistor=1 MOhms

T = C*R;
disp (T,'The Time Constant in Seconds')
