//Caption:Find the speed of motor
//Exa:2.21
clc;
clear;
close;
V=250;//in volts
I_L1=5;//in amperes
R_a=0.2;//in ohms
R_f=250;//in ohms
I_f=V/R_f;//in amperes
I_a1=I_L1-I_f;//in amperes
I_L2=50;//in amperes
I_a2=I_L2-I_f;//in amperes
N_1=1000;//in rpm
E_2=V-(I_a2*R_a);//in volts 
E_1=V-(I_a1*R_a);//in volts 
N_2=N_1*(E_2/E_1);//in rpm
disp(N_2,'speed of motor (in rpm)=')