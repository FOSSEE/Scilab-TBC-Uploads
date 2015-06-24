//Example 4// Velocity, Amplitude of pressure and particle velocity amplitude
clc;
clear;
close;
//given data :
gama=1.4;
P=1.013*10^5;
p1=1.29;// in kg/m^3
A=2.5*10^-7;// in m
v=sqrt(gama*P/p1);
disp(v,"The velocity,v(m/s) = ")
n=1000;// in Hz
lamda=v/n;
disp(lamda,"Wavelength,lamda(m) = ")
p=p1*v*2*%pi*n*A;
disp(p,"Amplitude of pressure,p(N/m^2) = ")
u=2*%pi*n*A;
disp(u,"Particle velocity amplitude,u(m/s) = ")
