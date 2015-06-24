// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_21
clc; clear;
// A current of 1.2 A flows in a coil with an inductance of 0.4 H. How much energy is stored in the magnetic field?

// Given data

l1 = 0.4;     // Coil Inductance 1=0.4 H
I = 1.2;      // Current=1.2 Amps

E = (l1*I*I)/2;
disp (E,'The Energy Stored in the Magnetic Field in Joules')
