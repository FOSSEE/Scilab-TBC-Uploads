// Grob's Basic Electronics 11e
// Chapter No. 27
// Example No. 27_2
clc; clear;
// A silicon diode has a forward voltage drop of 1.1 V for a forward diode current, If, of 1 A. Calculate the bulk resistance, Rb.

// Given data

Vf1 = 1.1;  // Forward votage 1=1.1 Volts
If1 = 1     // Forward current 1=1 Amps
Vf2 = 0.7;  // Fwd. vltg. 2=0.7 Volts (min working vltg of diode is 0.7 V)
If2 = 0     // Forward current=0 Amps

delV = Vf1-Vf2;     // diff. between max. min. Voltages
delI = If1-If2;     // diff. between max. min. Currents

Rb = delV/delI;
disp (Rb,'The Bulk Resistance in Ohms')
