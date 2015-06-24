//Caption:Find the speed of machine
//Exa:2.22
clc;
clear;
close;
V=250;//in volts
P_i=50*10^3;//in watts
I_L1=P_i/V;//in amperes
R_a=0.02;//in ohms
R_f=50;//in ohms
I_f=V/R_f;//in amperes
I_a1=I_L1+I_f;//in amperes
I_L2=P_i/V;//in amperes
I_a2=I_L2-I_f;//in amperes
N_1=400;//in rpm
E_2=V-(I_a2*R_a)-(2*1);//in volts 
E_1=V+(I_a1*R_a)+(2*1);//in volts 
N_2=int(N_1*(E_2/E_1));//in rpm
disp(N_2,'speed of motor (in rpm)=')