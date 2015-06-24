//Caption: Find (a)Input to generator from prime mover on full load (b)Efficiency on full load (c)Load current at which generator efficiency is maximum
//Exa:8.6
clc;
clear;
close;
V=230//Voltage of generator(in volts)
I=150//Full load current(in A)
R_a=0.1//Armature resistance(in ohms)
R_f=230//Field resistance(in ohms)
P_s=1500//Stray losses(in watt)
I_f=V/R_f
I_a=I_f+I
W_ac=(I_a^2)*R_a
W_fc=(I_f^2)*R_f
P_c=W_fc+P_s
L_t=W_ac+P_c
P_o=V*I
P_i=P_o+L_t
disp(P_i,'(a)Input to generator from prime mover on full load(in watt)=')
Eff=(P_o/P_i)*100
disp(Eff,'(b)Efficiency on full load(in %)=')
I_l=sqrt(P_c/R_a)
disp(I_l,'(c)Load current at which generator efficiency is maximum(in A)=')