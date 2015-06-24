// Chapter9
// Page.No-402, Figure.No-9.16(a)
// Example_9_5
// Value of capacitor
// Given
clear;clc;
Ra=10*10^3; // Resistance in ohm
tp=10*10^-3; // Output pulse width
C=tp/(1.1*Ra);
printf("\n Capacitance C is = %.9f farad \n",C) // Approximately 1uF