// Exa 2.8
clc;
clear;
close;
format('v',7)
// Given data
R1 = 4;// in ohm
R2 = 24;// in ohm
R_L = 16;// in ohm
V1 = 20;// in V
V2 = 30;// in V
// V1-R1*I-R2*I-V2 = 0;
I= (V1-V2)/(R1+R2)
// V1-R1*I-Vth = 0;
Vth = V1-R1*I;// in V
Rth = (R1*R2)/(R1+R2);// in ohm
// current through 16 ohm resistor 
I_L = Vth/(Rth+R_L);// in A
disp(I_L,"The current through 16 ohm resistor in A is");
