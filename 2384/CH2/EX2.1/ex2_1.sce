// Exa 2.1
clc;
clear;
close;
format('v',5)
// Given data
R1 = 6;// in ohm
R2 = 6;// in ohm
R3 = 6;// in ohm
V = 24;// in V
R_T =R1+R1*R2/(R1+R2);// in ohm
I_T = V/R_T;// in A
I1 = (R1/(R1+R2))*I_T;// in A
V = 12;// in V
I_T = V/R_T;// in A
I2 = (R1/(R1+R2))*I_T;// in A
I = I1+I2;// in A
disp(I,"The current in A is");
