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
V2= 15;// in V
// V1 - R1*I - R3*I -V2 = 0;
I= (V1-V2)/(R1+R3)
Vth = V2 + (R3*I);// in V
Rth = ((R1*R3)/(R1+R3)) + R2;// in ohm
I_N = Vth/Rth;// in A
// current through 6 ohm resistor 
I = (I_N*Rth)/(Rth+R_L);// in A
disp(I,"The current through 6 ohm resistor in A is");
