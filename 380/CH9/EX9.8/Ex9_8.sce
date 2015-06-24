//Caption:Find Eqv circuit parameters
//Exa:9.8
clc;
clear;
close;
V_1=208;//in Volts
f=60;//in Hertzs
P=4;//no. of poles
N_m=1710;//in rpm
R_1=2.4/2;//in ohms
disp(R_1,'R_1 (in ohms)=');
W_oc=450/3;//in Watts
P_fw_phy=18/3;//in Watts
P_oc=W_oc-P_fw_phy;//in Watts
V_oc=V_1/sqrt(3);//in Volts
I_oc=1.562;//in Amperes
R_c=V_oc^2/P_oc;
disp(R_c,'R_c=core loss resistance (in ohms)=');
S_oc=V_oc*I_oc;//in Volt-Ampere
theta_oc=acosd(W_oc/S_oc);
I_m=I_oc*sind(theta_oc);
X_m=V_oc/I_m;
disp(X_m,'X_m=Magnetization reactance (in ohms)=');
V_br=27/sqrt(3);//in Volts
P_br=59.4/3;//in Watts
I_br=2.77;//In Amperes
R_e=P_br/I_br^2;
R_2=R_e-R_1;
disp(R_2,'R_2 (in ohms)=');
Z_e=V_br/I_br;
X_e=sqrt(Z_e^2-R_e^2);
X_1=X_e/2;
X_2=X_1;
disp(X_1,'X_1 (in ohms)=');
disp(X_2,'X_2 (in ohms)=');