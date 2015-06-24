// Exa 2.6 Again
clc;
clear;
close;
// Given data
gm1= 1/5.26;// in mA/V
gm1= gm1*10^-3;// in A/v
I= 9.5;// in µA
I=I*10^-6;// in A
del_I= 5.5*10^-3*I;// in A
V_OS= del_I/gm1;// in V
disp(V_OS*10^3,"The offset voltage in mV is : ")
