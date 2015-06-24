//Caption:Calculate (a)Efficiency of transformer (b)Load KVA at which max efficiency occurs and max efficiency (c)voltage regulation
//Exa:3.12
clc;
clear;
close;
V1=2000;//in volts
pf=0.8;
I1=10000/V1;//in amperes
P_iron=60;//in watts
V_sc=40;//in volts
I_sc=4;//in amperes
a=2000/200;
P_sc=70;//in watts
Z_O1=V_sc/I_sc;
R_O1=P_sc/I_sc^2;
X_O1=sqrt(Z_O1^2-R_O1^2);
R_O2=R_O1/a^2;
X_O2=X_O1/a^2;
I2=I1*a/2;//At half load
Del_V=I2*(R_O2*pf+X_O2*sqrt(1-pf^2));
V2=200-Del_V;
P_o=V2*I2*pf;//in watts
P_cu=(2.5/4)^2*P_sc;//At half load
Eff=0.5*P_o/(0.5*P_o+P_iron+P_cu);
disp(Eff*100,'(a)Efficiency (in %)=');
I_1=sqrt(P_iron/R_O1);
KVA_Load=10*I_1/5;
disp(KVA_Load,'(b)Load KVA at which max efficiency occurs=');
Eff_max=P_o/(P_o+P_iron+P_iron);
disp(Eff_max*100,'   Max Efficiency (in %)=');
I_2=50;//at full load
VR=(I_2*(R_O2*pf-X_O2*sqrt(1-pf^2)))/200;
disp(VR*100,'(c)Voltage Regulation (in %)=')