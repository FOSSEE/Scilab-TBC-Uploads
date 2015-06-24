//Exa 3.6
clc;
clear;
close;
//given datex
Io=0.15;//in uA
V=0.12;//in mVolt
Vt=26;//in mVolt
I=Io*10^-6*(exp(V/(Vt*10^-3))-1);//in A
disp(I*10^6,"Current flowing through diode in uA is ");