// Grob's Basic Electronics 11e
// Chapter No. 05
// Example No. 5_7
clc; clear;
// What R in parallel with 50 kOhms will provide an Req of 25 kOhms

// Given data

R1 = 50*10^3;         // R1=50k Ohms
Req = 25*10^3;       // Req=25k Ohms

R = (R1*Req)/(R1-Req);
disp (R,'The value of R in Ohms')
disp ('i.e 50 kOhms')
