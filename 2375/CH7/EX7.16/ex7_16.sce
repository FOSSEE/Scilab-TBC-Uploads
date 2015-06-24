// Exa 7.16
clc;
clear;
close;
format('v',6)
// Given data
Vt =  1;// in V
KnWbyL= 10*10^-3;// in A/V^2
V_DD = 5;// in V
V_D = 0.1;// in V
I_D = Vt*( (V_DD-Vt)*V_D - 1/2*KnWbyL );// in mA 
R_D = (V_DD-V_D)/(I_D*10^-3);// in ohm
R_D= R_D*10^-3;// in k ohm
disp(R_D,"The value of R_D in k ohm is : ")
V_DS = 0.1;// in V
r_DS =round(V_DS/(I_D*10^-3));// in ohm
disp(r_DS,"Effective resistance between drain and the source in ohm is");
