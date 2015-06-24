//Caption:calculate the speed of a d.c. shunt generator when it running as d.c. motor and taking 50 KW power at 250 volt
//Exam:2.32
clc;
clear;
close;
//calculation when machine is running as generator
V=250;//applied voltage to d.c. shunt generator
P_1=50000;//power delivers by d.c. shunt generator at V_1
N_1=400;//generator running at V_1 ,P_1
R_a=0.02;//armature resistance(in Ohm)
R_sh=50;//field resistance(in Ohm)
I_l=P_1/V;//load current(in Amp)
I_sh=V/R_sh;//field current(in Amp)
I_a1=I_l+I_sh;//armature current when machine working as a generator(in Amp)
C_d=1;//contact drop (in volt per brush)
E_1=V+I_a1*R_a+2*C_d;//induced emf by machine when working as a generator(in V)
//calculation when machine is running as motor
I_a2=I_l-I_sh//armature current when machine working as a motor(in Amp)
E_2=V-I_a2*R_a-2*C_d;//induced emf by machine when working as a motor(in V)
N_2=(E_2/E_1)*N_1;//speed of the machine when running as shunt motor(in r.p.m.)
disp(N_2,'speed of the machine when running as shunt motor and taking 50 KW power at 250 volt(in r.p.m.)=');