// Exa 6.8
clc;
clear;
close;
// Given data
I_DSS= 20;// in mA
I_DSS=I_DSS*10^-3;// in A
gmo= 9.4;// in ms
gmo=gmo*10^-3;// in s
// Formula gmo= -2*I_DSS/V_P
V_P= -2*I_DSS/gmo;// in volts
disp(V_P,"Pinch off voltage in volts is : ")
