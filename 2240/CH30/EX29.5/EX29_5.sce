// Grob's Basic Electronics 11e
// Chapter No. 29
// Example No. 29_5
clc; clear;
// Assume that r'e varies from 3.33 Ohms to 6.67 Ohms. Calculate the minimum and maximum values for Av.

// Given data

rl = 600;     // Load resistance=600 Ohms
re1 = 3.33;   // Internal emitter resistance=3.33 Ohms
re2 = 6.67;   // Internal emitter resistance=6.67 Ohms
rE = 60;      // Emitter resistance=60 Ohms

Av1 = rl/(re1+rE);
disp (Av1,"The Voltage Gain Av(max) when r`e=3.33 Ohms is")

Av2 = rl/(re2+rE);
disp (Av2,'The Voltage Gain Av(min) when r`e=6.67 Ohms is')
disp ('Appox 9')


