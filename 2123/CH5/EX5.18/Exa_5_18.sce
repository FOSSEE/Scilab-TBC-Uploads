//Example No. 5.18
clc;
clear;
close;
format('v',6);

//Given Data : 
V=400;//V
f=50;//Hz
I=50;//A
Ra=0.1;//ohm
K=0.3;//V/rpm
Ia=5;//A
alfa=30;//degree
Vavg=3*sqrt(3)*V*sqrt(2)/sqrt(3)/2/%pi*(1+cosd(alfa));//V
Eb=Vavg-Ia*Ra;//V
N=Eb/K;//rpm
disp(N,"No load speed in rpm : ");
Speed=1600;//rpm
Eb=Speed*K;//V
Vin=Eb+I*Ra;//V
alfa=acosd(Vin/3/sqrt(3)/V/sqrt(2)*sqrt(3)*2*%pi-1);//degree
disp(alfa,"Fringe angle in degree : ");
