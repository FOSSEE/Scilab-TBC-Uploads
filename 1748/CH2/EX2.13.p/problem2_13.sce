//problem 2.13
clc;
clear;
close;
//given data :
format('v',6);
m=3;//No. of phase
P=6;//no. of poles
f=50;//in Hz
Xo=6;//in ohm per phase
R=1;//in ohm per phase
Eo=62.8;//in volt
Ns=120*f/P;//in rpm
Omega_s=2*%pi*Ns/60;//in radians/sec
K=m/Omega_s;
S=1;//slip at starting
Ts=K*S*Eo^2*R/(R^2+(S*Xo)^2);//in Nw-m
disp(Ts,"Starting torque(Nw-m) : ")
S=R/Xo;//slip for max torque
Tmax=K*Eo^2/(2*Xo);//in Nw-m
disp(Tmax,"Maximum torque(Nw-m) : ")
//Note  : Answer in the book is wrong due to calculation mistake.
