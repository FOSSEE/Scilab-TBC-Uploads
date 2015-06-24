// Exa 2.17
clc;
clear;
close;
// Given data
V = 10;// in V
R1 = 1;// in k ohm
R1=R1*10^3;// in ohm
R2 = 9;// in  k ohm
R2= R2*10^3;// in ohm
I_out = 20;// in mA
I_out=I_out*10^-3;// in A
R_L = V/( I_out-(V/(R1+R2)) );// in ohm
disp(R_L,"The lowest value of R_L in ohm is");
