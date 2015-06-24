//Caption:Calculate the value of reflected power
//Exa:7.4
clc;
clear;
close;
//Given:
P_i=4.5;//in mW
S=2;//VSWR
C=30;//in dB
p=(S-1)/(S+1);
P_f=P_i/(10^(C/10));
P_r=p^2*P_i;
disp(P_r,'Reflected power (in watts) =');