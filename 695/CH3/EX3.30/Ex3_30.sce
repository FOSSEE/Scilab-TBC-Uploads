//Caption:Find the Efficiency and voltage regulation of transformer
//Exa:3.30
clc;
clear;
close;
P_i=100;//in watts
V2=400;//in volts
P_sc=200;//in watts
I_2=11.4;//in amperes
R_O2=P_sc/I_2^2;//in ohms
KVA=5;
I_2fl=KVA*1000/V2;
P_cu=I_2fl^2*R_O2;
pf=0.9;
Eff=KVA*1000*pf/(KVA*1000*pf+P_cu+P_i);
disp(Eff*100,'Efficiency (in %)=');
V_2sc=40;//in volts
Z_O2=V_2sc/I_2;
X_O2=sqrt(Z_O2^2-R_O2^2);
VR=I_2fl*(R_O2*pf+X_O2*sqrt(1-pf^2))/V2;
disp(VR*100,'Voltage Regulation (in %)=')