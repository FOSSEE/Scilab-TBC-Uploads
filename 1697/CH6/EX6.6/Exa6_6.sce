//Exa 6.6
clc;
clear;
close;
//Given Data:
f=1430;//in MHz
f=f*10^6;//in Hz
d=64;//in meter
c=3*10^8;//Speed of light in m/s
lambda=c/f;//in meter
//Part (a):
HPBW=70*lambda/d;//in degree
disp(HPBW,"HPBW in degree :");
//Part (b):
BWFN=140*lambda/d;//in degree
disp(BWFN,"BWFN in degree :");
//Part (c):
Gp=6*(d/lambda)^2;//gain 
Gp_dB=10*log10(Gp);//in dB
disp(Gp_dB,"Power Gain in dB : ");