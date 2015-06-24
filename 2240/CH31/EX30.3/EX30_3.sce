// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_3
clear; clc;
// Calculate the value of Vd

// Given Data

Vs = 1;         // Voltage at Resistor Rs=1 Volts
Rs = 200;       // Source Resistor=200 Ohms
Vdd = 10;       // Supply Voltage(Drain)=10 Volts
Rd = 1*10^3;    // Drain Resistor=1k Ohms

Is=Vs/Rs;

Id = Is;

Vd = Vdd-Id*Rd;
disp (Vd,'The Drain Voltage Vd in Volts')
