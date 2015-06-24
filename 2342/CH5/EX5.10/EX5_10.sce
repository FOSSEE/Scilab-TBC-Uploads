// Exa 5.10
format('v',6)
clc;
clear;
close;
// Given data
V_GS = 4;// in V
V_P = 2;// in V
R2 = 10;// in k ohm
R1 = 30;// in k ohm
R_D= 2.5;// in kohm
I_D= 15;// in mA
I_D= I_D*10^-3;// in A
V_DD = 25;// in V
V_G = (V_DD/R_D)*V_DD/(R1+R2);// in V
// The necessary value for R_S
R_S = (V_G-V_GS)/I_D;// in ohm
disp(R_S,"The value of R_S in ohm is");
