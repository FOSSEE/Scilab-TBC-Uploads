// Exa 6.15
clc;
clear;
close;
// Given data
I_DSS= 16;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4;// in V
V_DD= 18;// in V
V_GG= 0;// in V
R_D= 500;// in Ω
Rs= R_D;// in Ω
// V_GS= V_GG-V_P*I_D or = I_D= -V_GS/Rs  (as V_GSS= 0)     (i)
// I_D= I_DSS*(1-V_GS/V_P)^2            (ii)
// From (i) and (ii)
// V_GS^2*(1/V_P^2) + V_GS*(1/(I_DSS*Rs)-2/V_P) +1 =0
V_GS= [(1/V_P^2) (1/(I_DSS*Rs)-2/V_P) 1]
V_GS= roots(V_GS);
V_GS= V_GS(2);// since 0>= V_GS >=-4
 I_D= I_DSS*(1-V_GS/V_P)^2;// in A
 V_DS= V_DD-I_D*(R_D+Rs);// in V
disp(I_D*10^3,"The value of I_D in mA is : ") 
disp(V_GS,"The value of V_GS in volts is : ");
disp("Since the value of V_DS is greater than the difference of V_GS and V_P, So the saturation region operation is confirmed ");
