//Caption:Find the value of line current
//Exa:4.1
clc;
clear;
close;
a=2200/200;//transformation ratio
P=450*1000;//in watts
pf=0.85;
V_s=200;//in volts
I_2=P/(pf*V_s);//in amperes
I_1=1.15*I_2/a;
disp(I_1,'Value of line currents (in Amperes)=')