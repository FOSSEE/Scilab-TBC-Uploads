// Exa 2.24
clc;
clear;
close;
format('v',5)
// Given data
R1 = 3;// in ohm
R2 = 2;// in ohm
R3 = 1;// in ohm
R4 = 8;// in ohm
R5 = 2;// in ohm
V = 10;// in V
R = ((R1+R2)*R5)/((R1+R2)+R5);// in ohm
Rth = R + R3;// in ohm
R_L = Rth;// in ohm
disp(R_L,"The value of load resistance in ohm is");
