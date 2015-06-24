// Exa 2.16
clc;
clear;
close;
format('v',5)
// Given data
V = 6;// in V
R1 = 2;// in ohm
R2 = 1;// in ohm
R3 = 3;//in ohm
R4 = 2;// in ohm
Rth=(R1*R2/(R1+R2)+R3)*R4/((R1*R2/(R1+R2)+R3)+R4)
R_L = Rth;// in ohm
disp(R_L,"The value of R in ohm is");
