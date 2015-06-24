// Exa 2.14
clc;
clear;
close;
format('v',7)
// Given data
R1 = 5;// in ohm
R2 = 2;// in ohm
R3 = 8;// in ohm
V1 = 20;// in V
V2 = 12;// in V
// V1-R2*I-R1*I = 0;
I = V1/(R1+R2);// in A
// Vth + V2 - R2*I = 0;
Vth = (R2*I) - V2;// in V
Rth = ((R1*R2)/(R1+R2)) + R3;// in ohm
I_N = Vth/Rth;// in A
R_L = 10;// in ohm
// current through 10 ohm resistace 
I = (abs(I_N)*Rth)/(Rth+R_L);// in A
disp(I,"The current through 10 ohm resistace in A is");
