//Caption:Find the efficiency and voltage regulation
//Exa:4.11
clc;
clear;
close;
V_2a=480;//in volts
pf=0.707;//leading
theta=acosd(pf);
a_T=120/480;//ratio of transformation of step-up transformer
a=360/120;//ratio of transformation of two-winding transformer
R_cH=8.64*1000;//in ohms
R_H=18.9;//in ohms
X_H=21.6;//in ohms
X_L=2.4;//in ohms
R_L=2.1;//in ohms
X_mH=6.84*1000;//in ohms
R_cL=R_cH/a^2;//equivalent core loss resistance in ohms
X_mL=X_mH/a^2;//magnetizing reactance
I_2a=(720/360)*(cosd(theta)+%i*sind(theta));
I_H=I_2a;
I_pa=I_2a/a_T;
I_com=I_pa-I_2a;//current through common winding (in Amperes)
//on applying KVL to the output loop
E_L=(I_2a*(R_H+%i*X_H)+V_2a-I_com*(R_L+%i*X_L))/4;
V_1a=E_L+I_com*(R_L+%i*X_L);
I_ca=V_1a/R_cL;//core loss current in Amperes
I_ma=-%i*V_1a/X_mL;//magnetizing current in Amperes
I_phy_a=I_ca+I_ma;//excitation current 
I_1a=I_pa+I_phy_a;
P_o=real(V_2a*conj(I_2a));
P_in=real(V_1a*conj(I_1a));
Eff=P_o/P_in;
disp(Eff*100,'Efficiency (%)=');
V_2anL=V_1a/a_T;//no load voltage 
VR=(abs(V_2anL)-V_2a)/V_2a;
disp(VR*100,'Voltage regulation (%)=');