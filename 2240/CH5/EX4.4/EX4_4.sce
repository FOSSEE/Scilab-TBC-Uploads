// Grob's Basic Electronics 11e
// Chapter No. 04
// Example No. 4_4
clc; clear;
// A voltage source produces an IR drop of 40 V across a 20 Ohms R1, 60 V across a 30 Ohms R2, and 180 V across a 90 Ohms R3, all in series. According to Kirchhoff’s voltage law, how much is the applied voltage Vt ?

// Given data

V1 = 40;     // Voltage drop at R1=40 Volts
V2 = 60;     // Voltage drop at R2=60 Volts
V3 = 180;    // Voltage drop at R3=180 Volts

Vt = V1+V2+V3;
disp (Vt,'The Applied Voltage Vt in Volts')
