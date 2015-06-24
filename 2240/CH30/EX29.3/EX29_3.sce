// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_3
clc; clear;
// assume Av still equals 300. If vin is 5 mVp-p, calculate Vout.

// Given data

Vin = 5*10^-3;     // Input voltage=5 mVolts(p-p)
Av = 300;          // Voltage gain=300

Vo = Av*Vin;
disp (Vo,'The Output Voltage in Volts(p-p)')
