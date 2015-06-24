//Example 1_37
clc;
clear;close;

//Given data: 
V=300;//V
RL=10;//ohm
L=0;//H
Ith=100;//A
f=2000;//Hz
dv_by_dt=100*10^6;//V/s
//dv/dt=(vth(tau)-vth(0))/tau
//dv/dt=RL*(1-0.368)*V/(R+RL)/((R+RL)*C)
R=V/Ith;//ohm
C=RL*(1-0.368)*V/(R+RL)/(R+RL)/dv_by_dt
disp(R,"Value of R(ohm)");
disp(C,"Value of C(F)");
Ploss=1/2*C*V^2*f;//W
disp(Ploss,"Power loss in snubber circuit(W)")
disp("Power rating of resitance is "+string(Ploss)+" W as all energy will be disspated in the resistance.")
