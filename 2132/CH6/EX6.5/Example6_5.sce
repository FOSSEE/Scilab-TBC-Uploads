//Example 6.5
clc;
clear;
close;
format('v',6);
//Given data :
g=9.81;//constant
d=30/1000;//meter
wl=2;//kgm
w1=148.6/60;//kg/sec
y=1.65;//meter
H=1.3;//meter
Cv=wl/w1/y*sqrt(g)/sqrt(2*H);
disp(Cv,"Coefficient of velocity : ");
Q=w1/1000;//Cumec
a=%pi/4*d^2;//meter^2
Qth=a*sqrt(2*g*H);//Cumec
Cd=Q/Qth;//coeff. of discharge
disp(Cd,"Coefficient of discharge : ");
Cc=Cd/Cv;//coeff. of contraction
format('v',5);
disp(Cc,"Coefficient of contraction : ");
//Answer in the book are not accurate.
