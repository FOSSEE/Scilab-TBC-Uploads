//Example No. 5.28
clc;
clear;
close;
format('v',9);

//Given Data : 
V1=230;//V
N=1000;//rpm
P=15;//hp
Rt=0.2;//ohm
Ke=0.03;//V/A-s
Kt=0.03;//N-m/A^2
alfa=30;//degree
Vm=V1*sqrt(2);//V
omega=N*2*%pi/60;//rad/s
V=Vm/%pi*(1+cosd(alfa));//V
//V=Ke*Ia*omega+Ia*Rt
Ia=V/(Ke*omega+Rt);//A
disp(Ia,"Motor current in A : ");
T=Kt*Ia^2;//N-m
disp(T,"Torque in N-m : ");
