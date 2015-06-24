//Caption:Calculate the circuit parameters reffered to LV Side and also calculate the regulation and efficiency of transformer at full load and half load at 0.8 pf
//Exa:3.15
clc;
clear;
close;
a=0.5;
V1=250;//in volts
I_o=1.2;//in amperes
W_o=80;//in watts
pf=W_o/(V1*I_o);
pf2=0.8;
R_O=V1/(I_o*pf);
X_O=V1/(I_o*sqrt(1-pf^2));
V_sc=25;//in volts
I_sc=10;//in amperes
P_sc=95;//in watts
Z_O2=V_sc/I_sc;
R_O2=P_sc/I_sc^2;
X_O2=sqrt(Z_O2^2-R_O2^2);
R_O1=a^2*R_O2;
X_O1=a^2*X_O2;
I_2=6000/500;//in amperes
VR=I_2*(R_O2*pf2+X_O2*sqrt(1-pf2^2))/500;
VR_h=0.5*I_2*(R_O2*pf2+X_O2*sqrt(1-pf2^2))/500;
disp(R_O,'R_O (in ohms)=');
disp(X_O,'X_O Magnetising reactance (in ohms)=');
disp(R_O1,'Equivalent Resistance reffered to LV Side (in ohms)=');
disp(X_O1,'Equivalent Reactance reffered to LV Side (in ohms)');
disp(VR*100,'Voltage Regulation at full load (in %)=');
disp(VR_h*100,'Voltage Regulation at half load (in %)=');
P_o=(500-I_2*(R_O2*pf2+X_O2*sqrt(1-pf2^2)))*I_2*pf2;
P_i=80;//in watts
P_cu=(12/10)^2*P_sc;
P_cu_h=0.5^2*P_cu;
Eff=P_o/(P_o+P_i+P_cu);
disp(Eff*100,'Efficiency at full load (in %)=');
P_o_h=(500-I_2*0.5*(R_O2*pf2+X_O2*sqrt(1-pf2^2)))*I_2*0.5*pf2;
Eff_h=P_o_h/(P_o_h+P_i+P_cu_h);
disp(Eff_h*100,'Efficiency at half load (in %)=');