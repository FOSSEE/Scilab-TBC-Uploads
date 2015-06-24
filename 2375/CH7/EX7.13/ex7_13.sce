// Exa 7.13
clc;
clear;
close;
format('v',6)
// Given data
Vt = -1;// in V
KnWbyL = 1*10^-3;// in A/V^2
V_DS = 0.1;// in V
V_GS = 0;// in V
I_D = ( (V_GS-Vt)*V_DS-1/2*KnWbyL );// in mA
V = 9.9;// in V
R_D = V/I_D;// in k ohm
R_D= ceil(R_D);// in k ohm
disp(R_D,"The value of R_D in k ohm is : ")
V_DS = 0.1;// in V
r_DS = V_DS/(I_D*10^-3);// in ohm
r_DS= round(r_DS*10^-3);// in k ohm
disp(r_DS,"Effective resistance between source and drain in k ohm is");
