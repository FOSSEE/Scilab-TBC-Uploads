// Exa 6.3
clc;
clear;
close;
// Given data
I_DSS= 1.65;// in mA
I_DSS=I_DSS*10^-3;// in A
V_P= -2;// in V
I_D= 0.8;// in mA
I_D=I_D*10^-3;// in A
V_BB= 24;// in V
// Part (a)
V_GS= V_P*(1-sqrt(I_D/I_DSS));// in V
disp(V_GS,"The value of V_GS in volts is : ")

// Part (b)
gmo= -2*I_DSS/V_P*10^3;// in ms
gm= gmo*(1-(V_GS)/V_P);// in ms
disp(gm,"The value of gm is : ")
