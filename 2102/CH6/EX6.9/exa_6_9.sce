// Exa 6.9
clc;
clear;
close;
// Given data
I_DSS= 10;// in mA
I_DSS= I_DSS*10^-3;// in A
I_DS= 2.5;// in mA
I_DS= I_DS*10^-3;// in A
V_P= 4.5;// in V
// Formula I_DS= I_DSS*(1-V_GS/V_P)^2
V_GS= V_P*(1-sqrt(I_DS/I_DSS));// in volts
gm= 2*I_DSS/V_P*(1-V_GS/V_P);// in A/V
disp(gm*10^3,"Transconductance in mA/V is : ")
