//Exam:1.2
clc;
clear;
close;
J_m=0.4;//motor inertia(in Kg-m2)
J_l=10;//load inertia(in Kg-m2)
a=0.1;//Teeth ratio of gear
i=1/a;
N=1400;
pi=22/7;
n=0.90;//efficency of motor
T_l=50;//Torque(N-m)
J=J_m+J_l/(i^2);//Total moment of inertia referred to the motor shaft
T_L=T_l/(i*n);//total equivalent torque referref to motor shaft
P=T_L*2*pi*N/60;//power developed by motor
disp(ceil(P),'power developed by motor(in Watt)=');