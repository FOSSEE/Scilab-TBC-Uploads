//Caption:Calculate the (a)Speed at full load and developed torque (b)Shaft power (c)Efficiency
//Exa:2.40
clc;
clear;
close;
V=230;//in volts
R_a=0.4;//in ohms
I_a1=3.4;//in amperes
R_f=170;//in ohms
E_b1=V-I_a1*R_a;
I_f=V/R_f;
I_L=41;//in amperes
I_a2=I_L-I_f;
E_b2=214.142;//in volts
N_1=1000;//in rpm
N_2=N_1*E_b2/(E_b1*0.96);//in rpm
disp(N_2,'(a)Speed at full load (in rpm)=')
T_a=9.55*E_b2*I_a2/N_2;
disp(T_a,'Torque Developed (in N-m)=')
P_r=E_b1*I_a1;
P_m=E_b2*I_a2;
P_f=P_m-P_r;
disp(P_f,'(b)Shaft Power (in watts)=')
P_in=V*I_L;
Eff=P_f/P_in;
disp(Eff*100,'(c)Efficiency (in %)=')