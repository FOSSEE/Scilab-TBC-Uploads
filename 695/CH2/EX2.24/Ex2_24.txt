//Caption:Determine the speed and percentage change in torque
//Exa:2.24
clc;
clear;
close;
V=460;//in volts
R_a=0.8;//in ohms
I_a1=40;//in amperes
I_a2=30;//in amperes
N_1=500;//in rpm
E_1=V-(I_a1*R_a);//in volts
E_2=V-(I_a2*R_a);//in volts
N_2=int(E_2*I_a1*N_1/(E_1*I_a2));
disp(N_2,'Speed (in rpm)=');
ratio=(I_a2/I_a1)^2;
T_c=(1-ratio)*100;
disp(T_c,'Percentage change in torque=')