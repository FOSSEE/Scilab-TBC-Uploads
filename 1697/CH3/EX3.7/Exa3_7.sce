//Exa 3.7
clc;
clear;
close;
//given data :
D=30;//in m
k=0.55;//illumination efficiency
f=4;//in GHz
f=f*10^9;//in Hz
c=3*10^8;//speed of light in m/s
lambda=c/f;//in Meter
r=D/2;//in m
A=%pi*(r^2);//in m^2
G=(4*%pi/lambda^2)*k*A;//Unitless
disp(G,"Gain : ");
HPBW=70*lambda/D;//in Degree
disp(HPBW,"HPBW in Degree : ");
BWFN=2*70*lambda/D;//in Degree
disp(BWFN,"BWFN in Degree : ");