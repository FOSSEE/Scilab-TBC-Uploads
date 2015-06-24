// Grob's Basic Electronics 11e
// Chapter No. 21
// Example No. 21_2
clc; clear;
// What is the total Z of a 600-Ohms R in parallel with a 300 Ohms Xl? Assume 600 V for the applied voltage.

// Given data

R = 600;    // Resistance=600 Ohms
Xl = 300;   // Inductive reactance=300 Ohms
V = 600;    // Applied voltage=600 Volts

Ir = V/R;
Il = V/Xl;
A = Ir*Ir;
B = Il*Il;
It = sqrt(A+B);

Zeq = V/It;
disp(Zeq,'The Total Impedence in Ohms')
