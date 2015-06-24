// Exa 2.19
clc;
clear;
close;
format('v',5)
// Given data
R1 = 36;// in ohm
R2 = 12;// in ohm
R3 = 8;// in ohm
V1 = 90;// in V
V2 = 60;// in V
R_T = (R2*R3)/(R2+R3)+R1;// in ohm
I_T = V1/R_T;// in A
I1 = (R2/(R2+R3)) * I_T;// in A
R = (R1*R3)/(R1+R3);// in ohm
R_T = R2+R;// in ohm
I_T = V2/R_T;// in A 
I2 = (R1/(R1+R3))*I_T;// in A
Ra = (R1*R2)/(R1+R2);// in ohm asumed
I_T = 2;// in A
I3 = (Ra/(Ra+R3))*I_T;// in A
// current in 8 ohm resistor 
I = I1+I2+I3;// in A
disp(I,"The current in 8 ohm resistor in A is");
