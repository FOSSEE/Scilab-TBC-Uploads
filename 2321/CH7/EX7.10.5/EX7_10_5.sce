//Example No. 7.10.5
clc;
clear;
close;
format('v',6);
f=100;//MHz(Operating frequency)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^6);//m(Wavelength)
a=lambda/25;//m(radius)
C=2*%pi*a;//m(Circumference)
d=2*10^-4*lambda;//m(Spacing)
disp("For single turn : ");
N=1;//n. of turns
RL_BY_Rr=3430/(C^3*f^(3.5)*N*d);//(temporary calculation)
K=1/(1+RL_BY_Rr)*100;//%(Radiation efficiency)
disp(K,"Radiation efficiency of single turn in % : ");
disp("For Eight turn : ");
N=8;//no. of turns
RL_BY_Rr=3430/(C^3*f^(3.5)*N*d);//(temporary calculation)
K=1/(1+RL_BY_Rr)*100;//%(Radiation efficiency)
disp(K,"Radiation efficiency of eight turn in % : ");
