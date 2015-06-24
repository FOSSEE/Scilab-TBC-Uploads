// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_16
clc; clear;
// Determine the Primary Impedence Zo

// Method 1
// Given data

Vp = 32;    // Primary Voltage = 32 Volts
Rl = 8;     // Load Resistance = 8 Ohms
TR = 4;     // Turns Ratio Np/Ns = 4/1

Vs = Vp/TR;

Is = Vs/Rl;

Ip = ((Vs/Vp)*Is);

Zp = Vp/Ip;
disp (Zp,'Primary Impedence in Ohms by Method 1');

// Method 2

Zp = TR*TR*Rl;
disp (Zp,'Primary Impedence in Ohms by Method 2');
