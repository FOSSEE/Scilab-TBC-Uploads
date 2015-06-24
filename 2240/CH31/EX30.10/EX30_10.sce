// Grob's Basic Electronics 11e
// Chapter No. 30
// Example No. 30_10
clear; clc;
// Calculate the value of Rd to provide an Id(on) of 10m Amps.

// Given Data

Vdd = 15;           // Suppy Voltage(Drain)=15 Volts
Vgson = 10;         // Voltage Gate-Source(on)=10 Volts
Idon = 10*10^-3;    // Drain Current(on)=10m Amps

Rd = (Vdd-Vgson)/Idon;
disp (Rd,'The Drain Resistance in Ohms');

disp('A 470 Ohms resistor would provide the proper biasing voltage at the  gate')
