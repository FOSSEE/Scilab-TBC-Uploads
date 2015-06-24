//Example No. 6.2
clc;
clear;
close;
format('v',7);

//Given Data : 
P=6;//poles
f1=50;//Hz
Pg=80;//KW
f2=100;//alternation/min
f2=f2/60;//Hz
Ns=120*f1/P;//rpm
Ns=Ns/60;//rps
S=f2/f1;//Slip
disp(S,"Slip is : ");
N=Ns*(1-S);//rps
disp(N*60,"Motor speed in rpm : ");
Pm=Pg*(1-S);//KW
disp(Pm,"Developed mechanical power in KW : ");
CuLoss=S*Pg;//KW
CuLoss_per_phase=CuLoss/3;//KW
disp(CuLoss_per_phase*1000,"Rotor Copper Loss per phase in W : ");
I2=65;//A
r2=CuLoss_per_phase*1000/I2^2;//ohm/phase
disp(r2,"Rotor resistance per phase in ohm : ");
T=Pg*1000/2/%pi/Ns;//N-m
disp(T,"Torque developed in N-m : ");
