// Grob's Basic Electronics 11e
// Chapter No. 04
// Example No. 4_5
clc; clear;
// An applied Vt of 120 V produces IR drops across two series resistors R 1 and R 2 If the voltage drop across R1 is 40 V, how much is the voltage drop across R2?

// Given data

V1 = 40;     // Voltage drop at R1=40 Volts
Vt = 120;    // Applied Voltage=120 Volts

V2 = Vt-V1;
disp (V2,'The Voltage Drop across Resistor R2 in Volts')
