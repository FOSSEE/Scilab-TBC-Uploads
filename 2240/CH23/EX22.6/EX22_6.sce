// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_6
clc; clear;
// If the capacitor is allowed to charge to 300 V and then discharged, how much is the capacitor voltage 0.01 s after the start of discharge? The series resistance is the same on discharge as on charge.

// Given data

C = 0.01*10^-6;     // Capacitor=0.01 uFarad
R = 1*10^6;         // Resistor=1 MOhms
V = 300;            // Applied DC=300 Volts

disp ('In one time constant, C discharges to 37% of its initial voltage')

V1 = 0.37*V;
disp (V1,'The Capacitor voltage after 0.01 sec start of discharge in volts')
