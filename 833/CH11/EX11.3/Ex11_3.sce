//Caption: Calculate (a)Number of poles (b)Slip (c)Slip for full load torque if total resistance in rotor circuit is doubled
//Exa:11.3
clc;
clear;
close;
n=970//Speed of induction motor(in r.p.m)
f=50//Frequency(in hertz)
n_s=1000//Synchronous speed(in r.p.m)
p=(f*120)/n_s
disp(p,'(a)Number of poles=')
s=((n_s-n)/n_s)*100
disp(s,'(b)Slip(in%)=')
S=((s/100)*2)*100
disp(S,'(c)Required slip(in%)=')