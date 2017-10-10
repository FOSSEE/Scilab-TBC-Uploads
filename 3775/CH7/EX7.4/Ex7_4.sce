//Ex 7.4 page 261

clc;
clear;
close;

Vs=230;// V
Ton=10;// ms
Toff=25;// ms
Ra=2;//ohm
N=1400;// rpm
k=0.5;// V/rad/s (back emf constant)
kt=0.5;// NM-A**-1 (torque constant)

Eb=N*2*%pi*k/60;// V
Va=Vs*Ton/(Toff);// V
Ia=(Va-Eb)/Ra;// A
T=kt*Ia;// Nm
printf('\n average armature current = %.2f A', Ia)
printf('\n torque = %.3f Nm', T)
