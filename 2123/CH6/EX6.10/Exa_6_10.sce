//Example No. 6.10
clc;
clear;
close;
format('v',7);

//Given Data : 


V=400;//volt
P=4;//pole
f=50;//Hz
r1=0.64;//ohm
r2=0.08;//ohm
x1=1.1;//ohm
x2=0.12;//ohm
T1=40;//N-m
N=1440;//rpm
N1=1300;//rpm
r2dash=r2*2^2;//ohm
x2dash=x2*2^2;//ohm
S=r2dash/sqrt(r1^2+(x1+x2dash)^2);//slip
V1=V/sqrt(3);//volt/phase
ns=2*f/P;//rps
Tst=3*V1^2*r2dash/(2*%pi*ns*[(r1+r2dash)^2+(x1+x2dash)^2]);//N-m
disp(Tst,"Starting torque at 50 Hz in N-m : ");
f=25;//Hz
x1=x1/2;//ohm
x2dash=x2dash/2;//ohm
V1=V1/2;//volt/phase
ns=2*f/P;//rps
Tst=3*V1^2*r2dash/(2*%pi*ns*[(r1+r2dash)^2+(x1+x2dash)^2]);//N-m
disp(Tst,"Starting torque at 25 Hz in N-m : ");
