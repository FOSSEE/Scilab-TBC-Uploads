// Grob's Basic Electronics 11e
// Chapter No. 20
// Example No. 20_4
clc; clear;
// A coil with negligible resistance has 62.8 V across it with 0.01 A of current. How much is Xl?

// Given data

Vl = 62.8;      // Voltage across coil=62.8 Volts
Il = 0.01;      // Current in coil=0.01 Amps

Xl = Vl/Il;
disp (Xl,'The Inductive Reactance in Ohms')
