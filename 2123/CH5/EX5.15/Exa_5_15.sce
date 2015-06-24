//Example No. 5.15
clc;
clear;
close;
format('v',7);

//Given Data : 
V=500;//V
Ia=200;//A
Ra=0.1//ohm
Kv=1.4;//V/A-rad/s
Kt=1.4;//N-m/A^2
If=2;//A
cycle=0.5;//sec
Pin=cycle*V*Ia/1000;//KW
disp(Pin,"Input power in KW : ");
Va=cycle*V;//V
Eb=Va-Ia*Ra;//V
omega=Eb/Kv/2;//rad/s
N=omega*60/2/%pi;//rpm
disp(N,"Speed in rpm : ");
T=Kt*2*Ia;//N-m
disp(T,"Torque in N-m : ");
