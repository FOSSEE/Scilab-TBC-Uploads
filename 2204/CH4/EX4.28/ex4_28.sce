// Exa 4.28
clc;
clear;
close;
// Given data
V_out = 3;// in V
V_in2 = 5;// in mV
V_in1 = 2;// in mV
V1 = V_in2-V_in1;// in mV
V1 = V1 * 10^-3;// in V
A = V_out/V1;
R_F = 15;// in  k ohm
R1 = 1;// in  k ohm
R2 = 2;// in  k ohm
R = R2/R1;// in k  ohm
R_G = (2*R_F)/((A/R)-1);//in  k ohm
R_G = R_G * 10^3;// in ohm
disp(R_G,"The value of R_G in Ω is");
