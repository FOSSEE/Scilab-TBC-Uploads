// Grob's Basic Electronics 11e
// Chapter No. 08
// Example No. 8_2
clc; clear;
// A 50 uA meter movement has an Rm of 1000 Ohms. What Rs is needed to extend the range to 500 uA?

// Given data

It = 500*10^-6;     // Total Current=500u Amps
Im = 50*10^-6;      // Current (cause of meter movement)=50 uAmps
rm = 1000;          // Resistance of moving coil=1000 Ohms

Is = It-Im;
Vm = Im*rm;

Rs = Vm/Is;
disp (Rs,'The Shunt Resistance Rs needed to extend the range to 500 uA in Ohms')
