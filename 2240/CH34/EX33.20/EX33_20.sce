// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_20
clc; clear;
// Vin is 5 V, R is 1 kOhms, and Rl is 100 Ohms. Calculate the output current, Iout.

// Given data

Vin = 5;        // Input votage=5 Volts
Ri = 1*10^3;    // Input resistance=1 kOhms
Rl = 100;       // Load resistance=100 Ohms

Io = Vin/Ri;
disp (Io,'The Output Current in Amps')
disp ('i.e 5 mAmps')
