// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_11
clc; clear;
// If Vz=10 V, calculate Iz.

// Given data

Vin = 25;       // Input voltage=25 Volts
Vz = 10;        // Zener voltage=10 Volts
Rs = 1*10^3;    // Source Resistance=1 kOhms

Iz = (Vin-Vz)/Rs;
disp (Iz,'The Zener Current in Amps')
disp ('i.e 15 mAmps')
