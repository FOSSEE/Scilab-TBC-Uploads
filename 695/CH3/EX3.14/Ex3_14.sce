//Caption:Calculate the parameters reffered to LV Side and also find the voltage regulation at full load and efficiency of transformer at full load and half load at 0.8pf lagging
//Exa:3.14
clc;
clear;
close;
a=0.5;
V1=200;//in volts
I_o=0.8;//in amperes
W_o=75;//in watts
pf=W_o/(V1*I_o);
pf2=0.8;
R_O=V1/(I_o*pf);
X_O=V1/(I_o*sqrt(1-pf^2));
V_sc=20;//in volts
I_sc=10;//in amperes
P_sc=90;//in watts
Z_O2=V_sc/I_sc;
R_O2=P_sc/I_sc^2;
X_O2=sqrt(Z_O2^2-R_O2^2);
R_O1=a^2*R_O2;
X_O1=a^2*X_O2;
I_2=4000/400;//in amperes
VR=I_2*(R_O2*pf2+X_O2*sqrt(1-pf2^2))/400;
disp(R_O,'R_O (in ohms)=');
disp(X_O,'X_O Magnetising reactance (in ohms)=');
disp(R_O1,'Equivalent Resistance reffered to LV Side (in ohms)=');
disp(X_O1,'Equivalent Reactance reffered to LV Side (in ohms)');
disp(VR*100,'Voltage Regulation at full load (in %)=');
P_o=(400-I_2*(R_O2*pf2+X_O2*sqrt(1-pf2^2)))*I_2*pf2;
P_i=75;//in watts
P_cu=P_sc;
P_cu_h=0.5^2*P_cu;
Eff=P_o/(P_o+P_i+P_cu);
disp(Eff*100,'Efficiency at full load (in %)=');
P_o_h=(400-I_2*0.5*(R_O2*pf2+X_O2*sqrt(1-pf2^2)))*I_2*0.5*pf2;
Eff_h=P_o_h/(P_o_h+P_i+P_cu_h);
disp(Eff_h*100,'Efficiency at half load (in %)=');