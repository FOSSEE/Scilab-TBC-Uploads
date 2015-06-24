// Exa 5.32
format('v',6)
clc;
clear;
close;
// Given data
I_DSS = 12;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P = -3;// in V
r_d = 45;// in k ohm
r_d= r_d*10^3;// in ohm
g_m = I_DSS/abs(V_P);// in S
// Part (i)
R1 = 91;// in M ohm
R1=R1*10^6;//in ohm
R2 = 10;// in M ohm
R2= R2*10^6;// in ohm
// Calculation to find the value of Ri
Ri= R1*R2/(R1+R2);// in ohm
Ri=Ri*10^-6;// in M ohm
disp(Ri,"The value of Ri in Mohm is : ")
// Part (ii)
R_S = 1.1;// in k ohm
R_S = R_S * 10^3;// in ohm
// The value of R_o,
R_o= (R_S*1/g_m)/(R_S+1/g_m);// in ohm
disp(R_o,"The value of R_C in ohm is : ")
// Part (iii)
// The value of R_desh_o
R_desh_o= R_o*r_d/(R_o+r_d);// in ohm
disp(R_desh_o,"The value of R''o in ohm is : ");
// Part (iv)
// The voltage gain can be find as,
Av= g_m*(R_S*r_d/(R_S+r_d))/(1+g_m*(R_S*r_d/(R_S+r_d)));
disp(Av,"The value of Av is : ")
