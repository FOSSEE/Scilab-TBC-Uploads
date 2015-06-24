// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_1
clc; clear;
// For the diode curve, calculate the dc resistance, RF, at points A and B.

// Given data

Vf1 = 0.65;         // Forward votage 1=0.65 Volts
If1 = 11*10^-3      // Forward current 1=11 mAmps
Vf2 = 0.7;          // Forward votage 2=0.7 Volts
If2 = 22.5*10^-3    // Forward current 2=22.5 mAmps

Rf1 = Vf1/If1;
disp (Rf1,'The Forward Resistance at Point A in Ohms')
disp ('Appox 59.1 Ohms')

Rf2 = Vf2/If2;
disp (Rf2,'The Forward Resistance at Point B in Ohms')
