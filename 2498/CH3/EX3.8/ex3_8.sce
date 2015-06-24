// Exa 3.8
clc;
clear;
close;
format('v',6)
// Given data
V1 = 18;// in V
V2 = 10;// in V
R = 250;// in ohm
I_R = (V1-V2)/R;// in A
I_R = I_R * 10^3;// in mA
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
I_L = V2/R_L;// in A
I_L =I_L * 10^3;// in mA
// I_R = I_L+I_Z;
// So, the value of zener current 
I_Z = I_R - I_L;// in mA
disp(I_Z,"The value of zener current in mA is");
