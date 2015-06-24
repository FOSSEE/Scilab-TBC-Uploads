// Grob's Basic Electronics 11e
// Chapter No. 06
// Example No. 6_1
clc; clear;
// The Current in M1 reads 0 A with the standard resistor RS adjusted to 5642 Ohms. What is the value of the unknown resistor Rx?

// Given data

Rs = 5642;          // Standard Resistor=5642 Ohms
R1 = 1*10^3;        // Resistor 1=1k Ohms
R2 = 10*10^3;       // Resistor 2=10k Ohms

Rx = Rs*(R1/R2);
disp (Rx,'The Unknown Resistance Rx in Ohms')
