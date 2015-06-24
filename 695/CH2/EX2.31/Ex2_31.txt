//Caption:Determine the resistance to be inserted in series
//Exa:2.31
clc;
clear;
close;
V=200;//in volts
R_a=0.4;//in ohms
N_1=1000;//in rpm
N_2=800;//in rpm
I_a1=20;//in amperes
E_1=V-(I_a1*R_a);//in volts
I_a2=0.8*I_a1;//in amperes
E_2=N_2*I_a2*E_1/(N_1*I_a1);//in volts
R=-(E_2-193.6)/16;
disp(R,'the resistance to be inserted in series (in ohms)=')