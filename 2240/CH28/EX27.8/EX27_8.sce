// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_8
clc; clear;
//  Calculate the LED current.

// Given data

Vin = 24;       // Input voltage=24 Volts
Vled = 2;       // Voltage drop at LED=2 Volts
Rs = 2.2*10^3;  // Source Resistance=2.2 kOhms

Iled = (Vin-Vled)/Rs;
disp (Iled,'The LED Current in Amps')
disp ('i.e 10 mAmps')
