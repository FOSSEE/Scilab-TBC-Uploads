// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_11
clc; clear;
// A power transformer has 100 turns for Np and 600 turns for Ns. What is the turns ratio? How much is the secondary voltage Vs if the primary voltage Vp is 120 V?

// Given data

np = 100;       // Turns in primary coil=100
ns = 600;       // Turns in secondary coil=600
vp = 120;       // Primary voltage=120 Volts

Tr = np/ns;
disp (Tr,'The Turns Ratio is')
disp ('OR 1:6')

vs = vp*(ns/np);
disp (vs,'The Secondary Voltage in Volts')
