// Exa 2.5
clc;
clear;
close;
format('v',5)
// Given data
V1 = 12;// in V
V2 = 10;// in V
R1 = 6;// in ohm
R2 = 7;// in ohm
R3 = 4;// in ohm
R_T = R1 + ( (R2*R3)/(R2+R3) );// in ohm
I_T = V1/R_T;// in A
I1 = (R2/(R2+R3))*I_T;// in A
R_T = R2 + ( (R1*R3)/(R1+R3) );// in ohm
I_T = V2/R_T;// in A
I2 = (R1*I_T)/(R1+R3);// in A
// current across 4 ohm resistor 
I = I1+I2;// in A
disp(I,"The current across 4 ohm resistor in A is");
