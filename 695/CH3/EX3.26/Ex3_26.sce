//Caption:Find the voltage regulation
//Exa:3.26
clc;
clear;
close;
KVA=100;
Eff_max=0.98;
x=0.8;
pf=0.8;
P_o=x*KVA*1000*pf;//in watts
P_i=(P_o-P_o*Eff_max)/(2*Eff_max);//in watts
P_cu=P_i/x^2;
R_equ=P_cu/(KVA*1000);
Z_equ=0.05;
X_equ=sqrt(Z_equ^2-R_equ^2);
VR=R_equ*pf+X_equ*sqrt(1-pf^2);
disp(VR*100,'Voltage Regulation (in %)=')