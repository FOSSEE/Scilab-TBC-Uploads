//problem 2.14
clc;
clear;
close;
//given data :
format('v',6);
m=3;//No. of phase
P=4;//no. of poles
f=50;//in Hz
VL=200;//in volt
R=0.1;//in ohm per phase
Xo=0.9;//in ohm per phase
TurnsRatio=0.67;//ratio
S=4;//in %
Vphase=VL/sqrt(3);//in volt
Vrotor=Vphase*TurnsRatio;//in volt
Ns=1500;//in rpm
Omega_s=2*%pi*Ns/60;//in radians/sec
K=m/Omega_s;
S=S/100;//slip unitless
Ts=K*S*Vrotor^2*R/(R^2+(S*Xo)^2);//in Nw-m
disp(Ts,"Starting torque(Nw-m) : ")
//Note : Answer in the book is wrong due to calculation mistake.
