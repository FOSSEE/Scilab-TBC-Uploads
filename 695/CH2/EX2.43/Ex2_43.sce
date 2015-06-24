//Caption:Find the efficiency of the motor
//Exa:2.43
clc;
clear;
close;
V=240;//in volts
P=10000;//in watts
R_a=0.25;//in ohms
R_f=160;//in ohms
I_f=V/R_f;
I_L=5.2;//in amperes
I_ao=I_L-I_f;
W=V*I_ao-I_ao^2*R_a;
I_a=(V-sqrt(V^2-4*R_a*(P+W)))/(2*R_a);
P_in=P+W+I_a^2*R_a+I_f^2*R_f;
Eff=P/P_in;
disp(Eff*100,'Efficiency of the motor (in %)=')