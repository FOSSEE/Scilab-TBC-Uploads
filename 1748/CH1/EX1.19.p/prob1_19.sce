// Prob 1.19
clc;
clear;
close;
format('v',8);
// Given data :
Poles=2;//no. of poles
m=3;//no. of phase
f=50;//in Hz
VT=15;//in volt
Ps=100;//in MVA
cosfi=0.8;//lagging
Xs=0.7;//in ohm/phase
VP=VT/sqrt(3);//in Volt
AC=VT*cosfi;//in KV
sinfi=sind(acosd(cosfi));
BC=VT*sinfi;//in KV
IL=Ps*10^6/sqrt(3)/(VT*10^3);//in Ampere
BL=IL*Xs;//voltage drop in volt
LC=BL+BC;//in volt
AL=sqrt(AC^2+LC^2);//in volt
EmLine=AL*sqrt(3);//in volt
Ns=120*f/Poles;//ion rpm
P=Ps*10^6*cosfi;//in watts
T=P*60/2/%pi/Ns;//in Nw-m
disp(T,"Torque in Nw-m : ");
disp(Ns,"Speed in rpm is ");
//Note : Figure given in this question is not a plot. It is just drawn to represent data and can't be plotted.
