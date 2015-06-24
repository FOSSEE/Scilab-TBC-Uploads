// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_14
clc; clear;
// A transformer with a 20:1 voltage step-down ratio has 6 V across 0.6  in the secondary. (a) How much is Is? (b) How much is Ip?

// Given data

vs = 6;         // Secondary voltage=6 Volts
Rl = 0.6;       // Secondary load=0.6 Ohms
tr = 20/1;      // Turns ratio=20:1

Is = vs/Rl;
disp (Is,'The Secondary Current in Amps')

Ip = Is/tr;
disp (Ip,'The Primary Current in Amps')

