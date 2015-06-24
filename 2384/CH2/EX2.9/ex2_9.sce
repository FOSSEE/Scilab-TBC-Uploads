// Exa 2.9
clc;
clear;
close;
format('v',5)
// Given data
R1 = 6;// in ohm
R2 = 4;// in ohm
R3 = 3;// in ohm
R_L = 6;// in ohm
V1 = 6;// in V
V2 = 15;// in V
// V1 - R1*I - R3*I -V2 = 0
I= (V1-V2)/(R1+R3);
// Vth - R3*I -V2 = 0;
Vth =V2+R3*I;// in V
Rth = ((R1*R3)/(R1+R3)) + R2;// in ohm
// current through 6 ohm resistance 
I_L = Vth/(Rth+R_L);// in A
disp(I_L,"The current through 6 ohm resistance in A is");
