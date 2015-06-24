// Exa 2.11
clc;
clear;
close;
format('v',4)
// Given data
R1 = 4;// in ohm
R2 = 3;// in ohm
R3 = 2;// in ohm
R_L = 5;// in ohm
I = 6;// in A
V = 15;// in V
// V-R1*I1-R3*(I1+I) = 0;
I1 = (V-R3*I)/(R1+R3);// in A
I = I1 + I;// in A
Vth = R3*I;// in V
Rth = ((R1*R3)/(R1+R3)) + R2;// in ohm
// current in 5 ohm resistance 
I_L = Vth/(Rth+R_L);// in A
disp(I_L,"The current in 5 ohm resistance in A is");
