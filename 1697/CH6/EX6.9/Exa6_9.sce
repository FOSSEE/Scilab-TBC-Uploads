//Exa 6.9
clc;
clear;
close;
//Given Data:
K=55;//Aperture Efficiency in %
K=K/100;//Aperture Efficiency
f=15;//in GHz
f=f*10^9;//in Hz
c=3*10^8;//Speed of light in m/s
lambda=c/f;//in meter
G_dB=30;//in dB
G=10^(G_dB/10);//Gain unitless
//Formula : G=4*%pi*K*A/lambda^2
A=(G*lambda^2)/(4*%pi*K);//in m^2
disp(A,"Diameter of parabolic reflector in m^2 :");
//Part (b)
d=sqrt(4*A/%pi);//in meter
HPBW=70*lambda/d;//in degree
disp(HPBW,"HPBW in degree : ");
//Part (c)
BWFN=140*lambda/d;//in Degree
disp(BWFN,"BWFN in degree : ");
//Note : Answer in the book is not accurate.