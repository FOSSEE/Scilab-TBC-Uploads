// Grob's Basic Electronics 11e
// Chapter No. 19
// Example No. 19_13
clc; clear;
// A transformer with a 1:6 turns ratio has 720 V across 7200 Ohms in the secondary. (a) How much is Is? (b) Calculate the value of Ip.

// Given data

vs = 720;       // Secondary voltage=720 Volts
Rl = 7200;      // Secondary load=7200 Ohms
tr = 1/6;       // Turns ratio=1:6

Is = vs/Rl;
disp (Is,'The Secondary Current in Amps')

Ip = Is/tr;
disp (Ip,'The Primary Current in Amps')
