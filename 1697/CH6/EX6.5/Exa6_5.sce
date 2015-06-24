//Exa 6.5
clc;
clear;
close;
//Given Data:
f=10;//in GHz
f=f*10^9;//in Hz
BWFN=10;//in degree
c=3*10^8;//Speed of light in m/s
lambda=c/f;//in meter
//Part (a):
d=140*lambda/BWFN;//in meter
disp(d,"Diameter of a parabolic Antenna in meter : ");
//Part (b):
HPBW=58*lambda/d;//in degree
disp(HPBW,"3-dB Beamwidth in degree :");
//Part (c):
Gp=6*(d/lambda)^2;//gain 
Gp_dB=10*log10(Gp);//in dB
disp(Gp_dB,"Power Gain in dB : ");