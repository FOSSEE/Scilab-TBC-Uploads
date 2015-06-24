//Exa:1.5
clc;
clear;
close;
V=220;//in volts
V_1=200;//in volts
N=1000;//in rpm
I=100;//in amperes
R_a=0.1;//in ohms
E_b=V-I*R_a;//in volts
I_1=I;//in amperes
E_b1=V_1-I_1*R_a;//in volts
N_1=N*E_b1/E_b;
disp(ceil(N_1),'Motor Speed (in rpm)=')