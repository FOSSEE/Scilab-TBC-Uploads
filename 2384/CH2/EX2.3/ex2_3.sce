// Exa 2.3
clc;
clear;
close;
format('v',6)
// Given data
R1 = 6;// in ohm
R2 = 7;// in ohm
R3 = 4;// in ohm
R_L = 12;// in ohm
V = 30;// in V
Vth = (R3*V)/(R3+R1);// in V
Rth = R2 + ((R3*R1)/(R3+R1)) ;// in ohm
I_N = Vth/Rth;// in A
//The current through 12 ohm resistor 
I = (I_N*Rth)/(Rth+R_L);// in ohm
disp(I,"The current through 12 ohm resistor in A is");
