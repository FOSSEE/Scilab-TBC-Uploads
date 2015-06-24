// Exa 2.28
clc;
clear;
close;
format('v',6)
// Given data
R1 = 20;// in ohm
R2 = 12;// in ohm
R3 = 8;// in ohm
V1 = 90;// in V
V2 = 60;// in V
R_T = R1 + ((R2*R3)/(R2+R3));// in ohm
I_T = V1/R_T;// in A
I1 = I_T;// in A
R_T = R2 + ((R1*R3)/(R1+R3));// in ohm
I_T = V2/R_T;// in A
I2 = (R3/(R3+R1))*I_T;// in A
R_T = R1 + ((R2*R3)/(R2+R3));// in ohm
I_T = 2;// in A (given)
R = (R2*R3)/(R2+R3);// in ohm
I3 = (R/(R1+R))*I_T;// in A
// current in 20 ohm resistor 
I20 = I1-I2-I3;// in A
disp(I20,"The current in 20 ohm resistor in A is");
