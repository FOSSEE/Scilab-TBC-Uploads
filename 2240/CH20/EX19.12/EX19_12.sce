// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_12
clc; clear;
// A power transformer has 100 turns for Np and 5 turns for Ns. What is the turns ratio? How much is the secondary voltage Vs with a primary voltage of 120 V?

// Given data

np = 100;       // Turns in primary coil=100
ns = 5;         // Turns in secondary coil=5
vp = 120;       // Primary voltage=120 Volts

Tr = np/ns;
disp (Tr,'The Turns Ratio 20:1 or')

vs = vp*(ns/np);
disp (vs,'The Secondary Voltage in Volts')
