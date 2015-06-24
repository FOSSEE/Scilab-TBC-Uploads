// Exa 2.15
clc;
clear;
close;
format('v',6)
// Given data
V = 15;// in V
R1 = 4;// in  ohm
R2 = 3;// in ohm
R3 = 2;// in ohm
R_L = 5;// in ohm
Ig = 6;// in A
// V - R1*I1 - R3*(I1+Ig) = 0;
I1 = (V-R3*Ig)/(R1+R3);// in A
I = I1 + Ig;// in A
Vth = R3*I;// in V
Rth = ((R1*R3)/(R1+R3)) + R2;// in ohm
I_N = Vth/Rth;// in A
// current through 5 ohm resistor 
I = (I_N*Rth)/(Rth+R_L);// in A
disp(I,"The current through 5 ohm resistor in A is");
