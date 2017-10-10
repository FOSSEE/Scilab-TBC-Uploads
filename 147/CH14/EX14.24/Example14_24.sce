//Synchronous speed of induction motor N, Input Power Ps, Current Is
//Stator resistance per phase R1, Transformation ratio a
close();
clear;
clc;
N = 900;//rpm
Ps = 45000/3;//W
Is = 193.6;//A
R1 = 0.2;//ohm
a = 2;
R2 = (Ps/Is^2 - R1)/a^2;
R2dash = a^2*R2;
//Starting Torque 'Ts'
Ts = 3*Is^2*R2dash/(2*%pi*N/60);
mprintf('Rotor resistance per phase = %0.2f ohm\nStarting Torque = %0.1f N.m',R2,Ts);