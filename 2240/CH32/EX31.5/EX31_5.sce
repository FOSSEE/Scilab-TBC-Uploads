// Grob's Basic Electronics 11e
// Chapter No. 31
// Example No. 31_5
clear; clc;
// Calculate the fr of LC tank circuit and dc bias voltage at base

// Given data

L = 100*10^-6;      // Inductor=100 uHenry
C = 63.325*10^-12;  // Capacitor=63.325 pFarad
Vin = 1.5;          // Input Voltage(peak)=1.5 Volts
Vbe = 0.7;          // Voltage Base-Emitter=0.7 Volts

A = sqrt(L*C);
fr = 1/(2*3.14*A);
disp (fr,'The Resonant Frequency in Hertz')
disp ('i.e 2 MHz')

Vdc = (Vin-Vbe);
disp (Vdc,'The DC Bias Voltage at Base in Volts')
