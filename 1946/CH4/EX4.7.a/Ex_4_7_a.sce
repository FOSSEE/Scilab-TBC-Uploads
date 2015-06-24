// Example 4.8.a:Attenuation 
clc;
clear;
close;
L=1;// dISTANCE IN kM
h=0.63;//in micro meter
Tf=1400;//Temperature in kelvin
p=0.286;//photoelastic coefficient of silica
n=1.46;//Refractive index of silica
Bc=7*10^-11;//isothermal compersebility in in Metere square per N
K=1.38*10^-23;// bOLTZMAN CONSTT. IN JULIAN PER KELVIN
x= (h*10^-6);
Yr=(8*%pi^3*n^8*p^2*Bc*K*Tf)/(3*(x)^4);//ray leigh scattering coefficient
Ekm= exp(-Yr*L*10^3)
alpha=10*(log10(1/Ekm));//Attenuation in dB/Km
disp(alpha,"Attenuation in dB/Km")
disp("solutions of example 4.8 and 4.7 are interchanged in the book")

