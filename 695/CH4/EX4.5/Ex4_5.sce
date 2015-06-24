//Caption:Find the Efficiency
//Exa:4.5
clc;
clear;
close;
P=1200*1000;//in watts
R_1=2;//in ohms
R_2=0.03;//in ohms
P_iron=20000;//in watts
V_1p=6600;//in volts
V_2p=1100/sqrt(3);//in volts
a=V_1p/V_2p;
R_o2=R_2+(R_1/a^2);//in ohms
I_2p=P/(sqrt(3)*1100);//in amperes
P_cu=3*R_o2*I_2p^2;
P_t=P_iron+P_cu;
P_o=0.9*P;//in watts
Eff=P_o/(P_o+P_t);
disp(Eff*100,'Efficiency (in %)=')