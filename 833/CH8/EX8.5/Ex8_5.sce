//Caption: Find (a)Speed at full load torque (b)Speed at double full load torque (c)Stalling torque
//Exa:8.5
clc;
clear;
close;
V=250//Voltage of motor(in volts)
R_a=0.5//Armature resistance(in ohms)
n=400//Speed of motor at full load(in r.p.m)
i=30//Current taken by motor(in A)
R=1//Series resistance with armature(in ohms)
E_b1=V-(i*R_a)
E_b2=V-((R_a+R)*i)
N=n*(E_b2/E_b1)
disp(N,'(a)Speed at full load torque(in r.p.m)=')
I=2*i
E_b=V-(I*(R+R_a))
N_1=n*(E_b/E_b1)
disp(N_1,'(b)Speed at double full load torque(in r.p.m)=')
I_ft=V/(R+R_a)
T_stalling=I_ft/i
disp(T_stalling,'(c)Stalling torque=times the full load torque')