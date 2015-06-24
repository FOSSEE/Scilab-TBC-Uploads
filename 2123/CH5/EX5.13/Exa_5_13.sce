//Example No. 5.13
clc;
clear;
close;
format('v',7);

//Given Data : 
V=230;//V
f=50;//Hz
Rf=200;//ohm
Ra=0.25//ohm
Kv=1.1;//V/A-rad/s
Kt=1.1;//N-m/A^2
alfa_a=45;//degree
Ia=50;//A
alfa_f=0;
Vf=2*V*sqrt(2)/%pi*cosd(alfa_f);//V
Va=2*V*sqrt(2)/%pi*cosd(alfa_a);//V
If=Vf/Rf;//A
T=Kt*Ia*If;//N-m
disp(T,"Torque developed in N-m : ");
Eb=Va-Ia*Ra-2;//V
omega=Eb/Kv/If;//rad/s
N=omega*60/2/%pi;//rpm
disp(N,"Motor speed in rpm : ");
