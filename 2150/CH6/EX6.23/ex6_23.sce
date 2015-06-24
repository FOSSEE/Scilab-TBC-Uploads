// Exa 6.23
clc;
clear;
close;
// Given data
r_d = 25;// in kΩ
R1 = r_d;// in kΩ
R2 = r_d;// in kΩ
g_m = 2;//mA/V
g_m= g_m*10^-3;// in A/V
R_L = (r_d*R1*R2)/(r_d*R1+R1*R2+R2*r_d);// in kΩ
R_L= R_L*10^3;// in Ω
A_v = -g_m*R_L;
disp(A_v,"The voltage gain is ");
