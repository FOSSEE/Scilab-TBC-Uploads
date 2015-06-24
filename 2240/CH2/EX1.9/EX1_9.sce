// Grob's Basic Electronics 11e
// Chapter No. 01
// Example No. 1_9
clc; clear;
//Calculate the conductance for the following resistance values: (a) 1 kOhms (b)5 kOhms

// Given data

R1 = 1*10^3;      // R1=1k Ohms
R2 = 5*10^3;       // R2=5k Ohms

G1 = 1/R1;
disp (G1,'The Conductance for Resistance value 1 kOhms in Siemens')
disp ('OR 1 mS')

G2 = 1/R2;
disp (G2,'The Conductance for Resistance value 5 kOhms in Siemens')
disp ('OR 200 uS')
