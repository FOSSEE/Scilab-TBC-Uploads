// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_6
clc; clear;
// Find the exact value of Av. Also, find  Vout.

// Given data

rl = 909;       // Load resistance=909 Ohms
re = 3.35;      // Internal emitter resistance=3.35 Ohms
Vin = 1;        // Input voltage=1 Volts(p-p)

Av = rl/(re+rl);
disp (Av,'The Voltage Gain Av is')

Vo = Av*Vin;
disp (Vo,'The Output Voltage in Volts(p-p)')
disp ('i.e 996 mVolts(p-p)')
