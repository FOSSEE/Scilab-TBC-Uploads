//Caption :Calculated power developed in armature when machine running as (a)Generator (b)Motor
//Exam:2.22
clc;
clear;
close;
V=250;//line voltage(in V)
R_sh=125;//shunt field resistance(in Ohm)
I_sh=V/R_sh;//shunt field current(in Amp)
I_l=80;//line current(in Amp)
R_a=0.1;//armature resistance(in Ohm)
//As A Generator
I_a1=I_l+I_sh;//armature current in generator(in Amp)
E_g=V+I_a1*R_a;//generated emf(in V)
P_1=E_g*I_a1*10^-3;//power developed in armature (in KW)
disp(P_1,'power developed in armature when machine running as a generator(in KW)=');
//As A Motor
I_a2=I_l-I_sh;//armature current in motor(in Amp)
E_b=V-I_a2*R_a;//back emf in motor(in V)
P_2=E_b*I_a2*10^-3;//power developed in armature (in KW)
disp(P_2,'power developed in armature when machine running as a Motor(in KW)=');