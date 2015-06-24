//Caption:Find the no load speed 
//Exa:2.20
clc;
clear;
close;
V=200;//in volts
I_a0=2;//in amperes
R_a=0.4;//in ohms
I_a1=50;//in amperes
N_1=1200;//in rpm
E_0=V-(I_a0*R_a);//in volts 
E_1=V-(I_a1*R_a);//in volts 
N_0=N_1*(E_0/E_1);//in rpm
disp(N_0,'No-load speed (in rpm)=')