// Grob's Basic Electronics 11e
// Chapter No. 21
// Example No. 21_3
clc; clear;
// An air-core coil has an Xl of 700 Ohms and an Re of 2 Ohms. Calculate the value of Q for this coil.

// Given data

Xl = 700;   // Inductive reactance=700 Ohms
Re = 2;     // AC effective resistance=2 Ohms

Q = Xl/Re;
disp (Q,'The Q of Coil is')
