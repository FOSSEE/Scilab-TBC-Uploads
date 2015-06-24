// Exa 2.7
clc;
clear;
close;
format('v',5)
// Given data
R1 = 2;// in ohm
R2 = 4;// in ohm
R3 = 8;// in ohm
Ig = 2;// in A
V = 20;// in V
R_T = R1+R3;// in ohm
I1 = V/R_T;// in A
I2 = (R1/(R1+R3))*Ig;// in A
// current through in 8 ohm resistor 
I = I1-I2;// in A
disp(I,"The current through in 8 ohm resistor in A is");
