//Caption:Find the percentage resistance,reactance drop,efficiency and voltage regulation
//Exa:4.6
clc;
clear;
close;
P=1500*1000;//in watts
phy=acosd(0.8);
V_1P=300;//in volts
V_1L=6600;//in volts
I_1P=131.21/sqrt(3);
Z_1=V_1P/I_1P;//in ohms
R_1=30*1000/(3*I_1P^2);
X_1=sqrt((Z_1^2)-(R_1^2));
R=I_1P*R_1*100/V_1L;
X=I_1P*X_1*100/V_1L;
disp(R,'% Resistance drop (in %)=');
disp(X,'% Reactance drop (in %)=');
VR=(R*cosd(phy))+(X*sind(phy));
disp(VR,'Voltage regulation (in %)=')
I_1_FL=P/(sqrt(3)*V_1L);
P_t=(30+25)*1000;//in watts
P_o=P*0.8;//in watts
Eff=P_o/(P_o+P_t);
disp(Eff*100,'Efficiency (in %)=')