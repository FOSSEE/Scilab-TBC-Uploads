// Exa 2.10
clc;
clear;
close;
format('v',7)
// Given data
R1 = 8;// in ohm
R2 = 5;// in ohm
R3 = 2;// in ohm
R_L = 10;// in ohm
V1= 20;// in V
V2= 12;// in V
// V1-R3*I - R2*I = 0;
I = V1/(R2+R3);// in A
// Vth + V2 - R3*I = 0;
Vth = R3*I - V2;// in V
Rth = ((R2*R3)/(R2+R3)) + R1;// in ohm
// current through 10 ohm resistance 
I_L = abs(Vth)/(Rth+R_L);// in A
disp(I_L,"The current through 10 ohm resistance in A is");
