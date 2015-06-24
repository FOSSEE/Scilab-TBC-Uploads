//Exa 2.58
clc;
clear;
close;
//Given data :
format('v',6);
f=50;//in Hz
P=4;//no. of poles
phase=3;//no. of phase
R2=0.25;//in ohm per phase
S=2;//in %
S=2/100;//in fraction
Ns=120*f/P;//in rpm
Nr=Ns-Ns*S;//in rpm
//When speed reduced to 10%
NewSpeed=Nr*90/100;//in rpm
Sdash=(Ns-NewSpeed)/Ns;//in fraction
R2dash=(Sdash/S)*R2;//in ohm per phase
R=R2dash-R2;//in ohm
disp(R,"Value of resistance to be added(in ohm) :");