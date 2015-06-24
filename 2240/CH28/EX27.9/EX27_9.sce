// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_9
clc; clear;
// Calculate the resistance Rs, required to provide an LED current of 25 mA.

// Given data

Vin = 24;           // Input voltage=24 Volts
Vled = 2;           // Voltage drop at LED=2 Volts
Iled = 25*10^-3;    // LED Current=25 mAmps

Rs = (Vin-Vled)/Iled;
disp (Rs,'The Resistance Rs, Required to Provide an LED Current of 25 mA in Ohms')
