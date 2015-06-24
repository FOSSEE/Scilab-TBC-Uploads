//Exa:3.17
clc;
clear;
close;
V=200;//in volts
I_a=100;//in amperes
R_a=0.02;//in ohms
N1=940;//in rpm
N2=500;//in rpm
E_b1=V-(I_a*R_a);//in volts
E_b2=E_b1*N2/N1;//in volts
V_a=E_b2+(I_a*R_a);//in volts
alpha=V_a/V;
disp(alpha,'Duty Cycle Of The Chopper=')