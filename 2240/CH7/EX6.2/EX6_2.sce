// Grob's Basic Electronics 11e
// Chapter No. 06
// Example No. 6_2
clc; clear;
// what is the maximum unknown resistance Rx that can be measured for the ratio arm values shown?

// Given data

Rsmax = 9999;      // Standard Resistor(max)=9999 Ohms
R1 = 1*10^3;       // Resistor 1=1k Ohms
R2 = 10*10^3;       // Resistor 2=10k Ohms

Rxmax = Rsmax*(R1/R2);
disp (Rxmax,'The Unknown Resistance Rx(max) in Ohms')
