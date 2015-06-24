//Example No. 6.1
clc;
clear;
close;
format('v',7);

//Given Data : 
V=400;//volt
P=4;//poles
f=50;//Hz
Pout=10;//hp
Pout=Pout*735.5;//W
Snl=1/100;//No load Slip
Sfl=4/100;//Full load slip
Ns=120*f/P;//rpm
disp(Ns,"Synchronous speed in rpm : ");
N=Ns*(1-Snl);//rpm
disp(N,"Speed at no load in rpm : ");
N=Ns*(1-Sfl);//rpm
disp(N,"Speed at full load in rpm : ");
f2=Sfl*f;//Hz
disp(f2,"Frequency of rotor current at full load in Hz : ");
omega_n=N*2*%pi/60;//rad/s
T=Pout/omega_n;//N-m
disp(T,"Full load Torque in N-m : ");
//Answer of full load speed in the book is wrong.
