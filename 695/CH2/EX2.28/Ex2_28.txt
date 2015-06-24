//Caption:Determine the value of resistance
//Exa:2.28
clc;
clear;
close;
V=220;//in volts
R_a=0.1;//in ohms
N_1=800;//in rpm
N_2=520;//in rpm
I_a1=20;//in ampers
E_1=V-(I_a1*R_a);//in volts
E_2=N_2*E_1/N_1;//in volts
R_A=-(E_2-V+I_a1*R_a)/20;
disp(R_A,'Additional resistance(in ohms)=');