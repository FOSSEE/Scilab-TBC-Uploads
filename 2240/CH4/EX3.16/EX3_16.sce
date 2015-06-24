// Grob's Basic Electronics 11e
// Chapter No. 03
// Example No. 3_16
clc; clear;
// Determine the required resistance and appropriate wattage rating of a resistor to meet the following requirements: The resistor must have a 30-V IR drop when its current is 20 mA. The resistors available have the following wattage ratings: 1⁄8, 1⁄4, 1⁄2, 1, and 2 W.

// Given data

I = 20*10^-3;   // Current=20m Amps
V = 30;         // Voltage Drop=30 Volts

R = V/I;
disp (R,'The Resistor value in Ohms')
disp ('i.e 1.5 kOhms')

P = I*I*R;
disp (P,'The Power in Watts')
disp ('OR 600 mW')
