// Grob's Basic Electronics 11e
// Chapter No. 08
// Example No. 8_1
clc; clear;
// A shunt extends the range of a 50-uA meter movement to 1 mA. How much is the current through the shunt at full-scale deflection?

// Given data

It = 1*10^-3;       // Total Current=1 mAmps
Im = 50*10^-6;      // Current (cause of meter movement)=50 uAmps

Is = It-Im;
disp (Is,'The Current through Shunt at Full Scale Deflection in Amps')
disp ('i.e 950 uAmps')
