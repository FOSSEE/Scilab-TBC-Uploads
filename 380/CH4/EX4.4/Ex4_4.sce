//Caption:Find the efficiency 
//Exa:4.4
clc;
clear;
close;
//From Exa:4.3
V_2=230;//in Volts
Z_1=4+%i*12;
I_s=75*(cosd(30)+%i*sind(30));//in Amperes
a=10;//transformation ratio
E_1=2282.87*(cosd(2.33)+%i*sind(2.33));//in Volts
E_2=228.287*(cosd(2.33)+%i*sind(2.33));//in Volts
I_p=7.5*(cosd(30)+%i*sind(30));//in Amperes
P_o=14938.94;//in Watts
R_c1=20000;//core loss resistance on primary side
X_m1=15000;//magnetizing reactance on primary side
I_c=E_1/R_c1;//in Amperes
I_m=E_1/(%i*X_m1);//in Amperes
I_phy=I_c+I_m;//in Amperes
I_1=I_p+I_phy;//in Amperes
V_1=E_1+Z_1*I_1;//in Volts
P_in=real(V_1*conj(I_1));//in Watts
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=')