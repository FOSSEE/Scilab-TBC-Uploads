//Caption :Determine the total armature power developed when working as a)Generator b)motor
//Exam:21
clc;
clear;
close;
P=25*10^3;//output generator power(in Watt)
V=250;//output generator voltage(in V)
R_f=125;//field resistance(in Ohm)
R_a=0.05;//armature resistance(in Ohm)
I_sh=V/R_f;//shunt field current(in Amp)
//IN case of generator
I_o=P/V;//output generator current(in Amp)
I_a1=I_o+I_sh;//armature current for a generator(in Amp)
E_a1=250+I_a1*R_a;//generated emf in armature(in V)
P_a1=E_a1*I_a1;//generated power in armature when working as a generator(in Watt)
P_g=P_a1*10^-3;//generated power in armature when working as a generator(in kW)
disp(P_g,'power developed in armature when working as a generator(in KW)=');
//IN case of motor
I_in=P/V;//motor input current(in Amp)
I_a2=I_in-I_sh;//armature current for a motor(in Amp)
E_a2=250-I_a2*R_a;//generated emf in armature when working as a motor(in V)
P_a2=E_a2*I_a2;//generated power in armature when working as a motor(in Watt)
P_m=P_a2*10^-3;//generated power in armature when working as a motor(in KW)
disp(P_m,'power developed in armature when working as a motor(in KW)=');