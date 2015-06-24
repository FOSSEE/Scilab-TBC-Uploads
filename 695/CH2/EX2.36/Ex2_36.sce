//Caption:Determine the (a)full load speed  (b)Speed regulation (c)HP rating (d)Full load efficiency
//Exa:2.36
clc;
clear;
close;
V=240;//in volts
R_f=120;//in ohms
R_a=0.25;//in ohms
I_1=60;//in amperes
I_f=V/R_f;//in amperes
I_a1=I_1-I_f;//in amperes
E_b1=V-I_a1*R_a;//in volts
N_o=1000;//in rpm
I=6;//in amperes
I_ao=I-I_f;//in amperes
E_bo=V-I_ao*R_a;//in volts
N_1=N_o*E_b1/E_bo;
disp(N_1,'(a)Full load speed (in rpm) =');
SR=100*(N_o-N_1)/N_o;
disp(SR,'(b)Speed regulation (in %) =');
P_o=E_b1*I_a1-(E_bo*I_ao);
HP=P_o/746;
disp(HP,'(c)HP rating (in HP)=');
P_i=V*I_1;
Eff=P_o*100/P_i;
disp(Eff,'(d)Efficiency (in %)=')