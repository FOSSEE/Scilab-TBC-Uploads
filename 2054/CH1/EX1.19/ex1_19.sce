//Exa:1.19
clc;
clear;
close;
P_o=50*1000;//in VA
s_f=0.05;//slip
V=400;//in volts
I_f=P_o/(sqrt(3)*V);//in amperes
Z=0.866;//in ohms/phase
I_sc=V/(sqrt(3)*Z);//Short Circuit current (in amperes)
I_st=100;//Supply current at start (in amperes)
K=sqrt(I_st/I_sc);
disp(K*100,'Tap Position of auto transformer(in %)=');
I_ratio=I_sc/I_f;
T_r=K^2*I_ratio^2*s_f;
disp(T_r,'Ratio of Starting torque to full load torque =');