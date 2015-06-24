//Caption:Determine the (a)no load speed  (b)Full load speed (c)Speed Regulation
//Exa:2.34
clc;
clear;
close;
V=240;//in volts
V_b=2;//in volts
R_a=0.15;//in ohms
P=4;
Z=700;
Phy=0.06;//in Webers
A=P;
I_o=7;//in amperes
I_f=2;//in amperes
I=90;//in amperes
I_ao=I_o-I_f;//in amperes
E_bo=V-I_ao*R_a-V_b;//in volts
N_o=E_bo*60*A/(P*Phy*Z);//in rpm
disp(N_o,'(a)no load speed (in rpm)=');
I_a=I-I_f;//in amperes
E_b1=V-I_a*R_a-V_b;//in volts
N=E_b1*N_o/(E_bo*0.98);
disp(N,'(b)Full load speed (in rpm)=');
SR=100*(N_o-N)/N;
disp(SR,'(c)Speed Regulation (in %)=');