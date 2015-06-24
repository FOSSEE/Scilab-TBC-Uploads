//Example No. 6.15
clc;
clear;
close;
format('v',5);

//Given Data : 
P=4;//pole
f=50;//Hz
S=0.04;//slip
r1=0.04;//ohm
r1dash=0.04;//ohm
r2dash=0.04;//ohm
x1=0.2;//ohm
x2dash=0.2;//ohm
f1=30;//Hz
k=f1/f;//ratio of frequencies
S1=k*S;//slip
//For 50 Hz
//T=3*V1^2*S*r2dash/(2*%pi*ns)/[(S*r1+r2dash)^2+S^2*(x1+x2dash)^2];
//For 30 Hz
//T=3*V1^2/(2*%pi*ns)*S/(0.6*S1)/[(S/0.6+S/0.6/S1)^2+S^2];
//0.16445*S1^2-0.74*S1+0.00445=0
p=[0.16445 -0.074 0.00445];//polynomial for S1
S1=roots(p);
S1=S1(2);//as another value is for unstable region
Ns=2*f1/P*60;//rpm
N=Ns-S1*Ns;//rpm
disp(N,"Motor speed at 30 Hz operation in rpm : ");
