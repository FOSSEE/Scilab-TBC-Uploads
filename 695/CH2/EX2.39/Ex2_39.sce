//Caption:Determine the (a)efficiency (b)armature current (c)max efficiency
//Exa:2.39
clc;
clear;
close;
V=240;//in volts
R_f=240;//in ohms
R_a=0.6;//in ohms
I_o=5;//in amperes
I=18;//in amperes
I_f=V/R_f;//in amperes
I_ao=I_o-I_f;
I_a1=I-I_f;
E_bo=V-I_ao*R_a;//in volts
E_b1=V-I_a1*R_a;//in volts
P_dnL=E_bo*I_ao;//in watts
P_m=E_b1*I_a1;//in watts
P_o=P_m-P_dnL;
P_i=V*I;//in watts
Eff=P_o/P_i;
disp(Eff*100,'(a)Efficiency (in %)=')
I_a=sqrt((P_dnL+V*1)/R_a)
disp(I_a,'(b)Armature current (in Amperes)=')
E_b=V-I_a*R_a;
P_m2=E_b*I_a;//in watts
P_out=P_m2-P_dnL;//in watts
P_in=V*I_a;//in watts
Eff_m=P_out/P_in;
disp(Eff_m*100,'(c)Max Efficiency (in %)=')