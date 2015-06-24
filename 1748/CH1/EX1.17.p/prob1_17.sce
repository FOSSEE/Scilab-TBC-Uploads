// Prob 1.17
clc;
clear;
close;
format('v',6);
// Given data :
Poles=4;//no. of poles
m=3;//no. of phase
f=50;//in Hz
V=7000;//in volt/phase
I=1400;//in A/phase
Xs=1.2;//in ohm/phase
E=sqrt(V^2+(I*Xs)^2);//in volt
disp(E,"Induced emf in volt : ");
cosfi=1;//for resistive load
P=3*V*I*cosfi;//in watts
P=P/10^6;//in MWatts
N=120*f/Poles;//in rpm
w=2*%pi*N/60;//in radian per sec
T=P*10^6/w;//in Nw-m
T=T/9.81;//in Kg-m
disp(T,"Torque in Kg-m : ");
//Note : Answers in the book is not as much accurate as calculated by Scilab.
//Note : Figure given in this question is not a plot. It is just drawn to represent data and can't be plotted.
