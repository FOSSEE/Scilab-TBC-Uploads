// Example 4.8:refrative index
clc;
clear;
close;
alpha=0.46;//attenuation in Db/Km
L=1;// dISTANCE IN kM
h=1;//in micro meter
Tf=758;//Temperature in kelvin
p=0.245;//photoelastic coefficient of silica
Bc=8.4*10^-11;//isothermal compersebility in in Metere square per N
K=1.38*10^-23;// bOLTZMAN CONSTT. IN JULIAN PER KELVIN
x= h
Yr=((8*%pi^3*p^2*Bc*K*Tf)/(3*(x)^4))*10^24;//ray leigh scattering coefficient
n=((alpha)/(4.34*Yr*10^3))^(1/8);//Refractive index
disp(n,"Refractive index is")

