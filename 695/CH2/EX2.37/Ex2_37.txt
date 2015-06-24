//Caption:Determine the (a)speed  (b)Torque (c)Efficiency
//Exa:2.37
clc;
clear;
close;
V=240;//in volts
P=4;
Phy=0.008;//in webers
Z=1000;
A=2;
R_f=240;//in ohms
R_a=0.4;//in ohms
I_1=25;//in amperes
I_f=V/R_f;//in amperes
I_a1=I_1-I_f;//in amperes
E_b=V-I_a1*R_a;//in volts
N=E_b*60*A/(P*Z*Phy);
disp(N,'(a)speed (in rpm) =');
P_m=E_b*I_a1;
T_g=(9.55*P_m)/N;
disp(T_g,'(b)Torque (in N-m)=');
P_f=P_m-800;
P_i=V*I_1;
Eff=P_f*100/P_i;
disp(Eff,'(c)Efficiency (in %)=')