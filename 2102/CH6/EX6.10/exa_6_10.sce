// Exa 6.10
clc;
clear;
close;
// Given data
I_DSS= 10;// in mA
I_DSS= I_DSS*10^-3;// in A
gm= 10;// in ms
gm=gm*10^-3;// in s
// V_GSoff = V_GS = Vp  so , gm = gmo = -2*I_DSS/V_GSSoff
V_GSoff= -2*I_DSS/gm;// in volt
disp(V_GSoff,"The value of V_GS(off) in volts is : ")
