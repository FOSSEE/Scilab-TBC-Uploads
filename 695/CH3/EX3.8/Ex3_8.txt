//Caption:Find the equivalent circuit parameters reffered to primary side
//Exa:3.8
clc;
clear;
close;
a=400/200;
I_o_Lv=2;//in amperes
I_o_Hv=I_o_Lv/a;//in amperes
V_o=400;//in volts
P_occ=90;//in watts
pf=P_occ/(V_o*I_o_Hv);
I_w=I_o_Hv*pf;
disp(I_w,'I_w (in Amperes)=');
I_m=I_o_Hv*sqrt(1-pf^2);
disp(I_m,'Magnetising current I_m (in Amperes)=');
R_o=V_o/I_w;
disp(R_o,'R_o (in ohms)=');
X_o=V_o/I_m;
disp(X_o,'Magnetizing reactance X_o (in ohms)=');
V_sc=20;//in volts
I_sc=10;//in amperes
P_sc=100;//in watts
Z_o1=V_sc/I_sc;
R_o1=P_sc/I_sc^2;
disp(R_o1,'Effective resistance reffered to primary side (in ohms)=');
X_o1=sqrt(Z_o1^2-R_o1^2);
disp(X_o1,'Effective reactance reffered to primary side (in ohms)=')