// Grob's Basic Electronics 11e
// Chapter No. 33
// Example No. 33_5
clc; clear;
// If Avol equals 100,000, calculate the value of Vid.

// Given data

Avol = 100000;  // Open loop voltage gain=100,000
Vo = 10;        // Output voltage=10 Volts(p-p)

Vid = Vo/Avol;
disp (Vid,'The Differential Input Voltage in Volts(p-p)')
disp ('i.e 100 uVolts(p-p)')
