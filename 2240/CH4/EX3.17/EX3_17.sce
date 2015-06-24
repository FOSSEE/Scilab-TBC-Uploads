// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_17
clc; clear;
//Determine the required resistance and appropriate wattage rating of a carbonfilm resistor to meet the following requirements: The resistor must have a 225-V IR drop when its current is 150 uA. The resistors available have the following wattage ratings: 1⁄8, 1⁄4, 1⁄2, 1, and 2 W.

// Given data

I = 150*10^-6;   // Current=150 uAmps
V = 225;         // Voltage Drop=225 Volts

R = V/I;
disp (R,'The Resistor value in Ohms')
disp ('i.e 1.5 MOhms')

P = I*I*R;
disp (P,'The Power in Watts')
disp ('i.e 33.75 mW')
