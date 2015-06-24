// Grob's Basic Electronics 11e
// Chapter No. 07
// Example No. 7_1
clc; clear;
// Three 50 Ohms resistors R1, R2 and R3 are in series across an applied voltage of 180 V. How much is the IR voltage drop across each resistor?

// Given data

R1 = 50*10^3;       // Resistor 1=50k Ohms
R2 = 50*10^3;       // Resistor 2=50k Ohms
R3 = 50*10^3;       // Resistor 3=50k Ohms
Vt = 180;           // Applied Voltage=180 Volts

R = R1              // R = R1 = R2 = R3
Rt = R1+R2+R3;
V = Vt*(R/Rt);
disp (V,'The Voltage Drop across each Resistor in Volts')
