//Example No. 6.11
clc;
clear;
close;
format('v',7);

//Given Data : 
V=400;//volt
P=4;//pole
f=50;//Hz
r2dash=1;//ohm/phase
//Neglecting r1,x1,x2
f1=400;//Hz
S=4/100;//Slip
t2=1.5;//ms
t2=t2*10^-3;//sec
t=1/f1;//sec
t1=t-t2;//sec
R=2;//ohm(additional resistance)
R2dash=(r2dash*t1+(r2dash+R)*t2)/t;//ohm
V1=V/sqrt(3);//volt
T=3*V1^2*S/R2dash;//N-m
disp(T,"Torque in synch.watts : ");
