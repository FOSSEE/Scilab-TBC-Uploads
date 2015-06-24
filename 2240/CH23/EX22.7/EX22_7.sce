// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_7
clc; clear;
// Assume the capacitor is discharging after being charged to 200 V. How much will the voltage across C be 0.01 s after the beginning of discharge? The series resistance is the same on discharge as on charge.

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
R = 1*10^6;         // Resistor=1 MOhms
V = 200;            // Capacitor voltage=200 Volts

disp ('In one time constant, C discharges to 37% of its initial voltage')

V1 = 0.37*V;
disp (V1,'The Capacitor voltage after 0.01 sec start of discharge in volts')
