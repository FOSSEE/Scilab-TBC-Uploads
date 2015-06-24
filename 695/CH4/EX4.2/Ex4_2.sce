//Caption:Find the value of line current
//Exa:4.2
clc;
clear;
close;
a=2200/200;//transformation ratio
P_1=400*1000;//in watts
P_2=500*1000;//in watts
pf=0.8;
V_s=200;//in volts
I_2=P_1/(pf*V_s);//in amperes
I_1=1.15*I_2/a;
I_1T=I_1/2;
I_2M=P_2/(pf*V_s*a);
I_p=sqrt((I_1T^2)+(I_2M^2));
disp(I_p,'Value of line current (in Amperes)=')