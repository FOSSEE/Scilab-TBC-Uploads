//Exam:1.4
clc;
clear;
close;
J_m=0.4;//motor inertia(in Kg-m2)
J_l=10;//load inertia(in Kg-m2)
a=0.1;//Teeth ratio of gear
N=1500;
pi=22/7;
n_t=0.88;
m=600;//weight
g=9.81;
f_r=m*g;//force
w_m=fix(2*pi*N/60);//motor speed
w=2;//uniform speed of weight lifting
n=0.9;//efficency of motor
T_l=50;//Torque(N-m)
J=J_m+(a^2)*J_l+m*((w/w_m)^2);//Total moment of inertia referred to the motor shaft
T_L=(a*T_l/n)+f_r*w/(n_t*w_m) ;//total equivalent torque referred to motor shaft
p=T_L*w_m;//power developed by motor(in Watt)
P=p/1000;//power developed by motor(in kWatt)
disp(J,'Total torque referred to motor shaft(in kg-m2)=')
disp(T_L,'Total equivalent Torque referred to motor shaft(in N-m)=')
disp(P,'power developed by motor(in kWatt)=')