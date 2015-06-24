//Caption:Find the voltage regulation
//Exa:3.28
clc;
clear;
close;
KVA=500;
V2=500;//in volts
x=0.75;
pf=1;
Eff_max=0.97;
P_i=(KVA*x*1000*pf-KVA*x*1000*pf*Eff_max)/(2*Eff_max);//in watts
P_cu=P_i/x^2;
R_equ=P_cu/(KVA*1000);
X_equ=sqrt(0.1^2-R_equ^2);//in ohms
VR=R_equ*0.8+X_equ*0.6;
disp(VR*100,'Voltage Regulation (in %)=')