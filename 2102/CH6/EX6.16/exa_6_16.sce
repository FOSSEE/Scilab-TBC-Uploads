// Exa 6.16
clc;
clear;
close;
// Given data

I_DSS= 10;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P= -4;// in V
V_DD= 12;// in V
V_GG= 0;// in V
// Part (a) when
V_GS= -2;// in V
I_D= I_DSS*(1-V_GS/V_P)^2;// in A
disp(I_D*10^3,"When V_GS= -2 then, the value of I_D in mA ")
// Part (b) when
I_D= 9*10^-3;// in A
V_GS= V_P*(1-(sqrt(I_D/I_DSS)));// in V
disp(V_GS,"When I_D = 9 mA, then the value of V_GS in volts is : ")
