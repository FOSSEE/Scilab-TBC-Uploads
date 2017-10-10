// Determine the shaft power of 6 pole Induction Motor

clc;
clear;

f=50;
p=6;
rf=120/60; // Rotor Frequency
T=150; // Full Load torque

s=rf/f;

Ns=120*f/p;

Nr=Ns*(1-s);

Ps=2*%pi*Nr*T/60; // Shaft power

printf('The shaft power of the motor = %g kW \n',Ps/1000)
