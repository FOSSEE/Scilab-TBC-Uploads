//Exa 5.3
clc;
clear;
close;
//Given data :
f=20;//in MHz
f=f*10^6;//in Hz
Wmax=25;//in mW/m^2
A=10;//in m^2
c=3*10^8;//speed of light in m/s
lambda=c/f;//in meter
Rr=31171.2*[A/lambda^2]^2;//iin Ohm
//Formula : Wmax=V^2/(4*Rr)
V=sqrt(Wmax*10^-3*4*Rr);//in Volts
disp(V,"Maximum emf in the loop in Volts : ");
//Note : Answer in the book is wrong.