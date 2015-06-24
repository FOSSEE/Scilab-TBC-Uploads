//Exa 7.2
clc;
clear;
close;
//Given data :
lambda=0.8;//in um
lambda=lambda*10^-6;//in meter
deltaNEU=300;//in GHz
deltaNEU=deltaNEU*10^9;//in Hz
c=3*10^8;//speed of light in m/s
n=3.6;//Refractive index(unitless)
//Part (a) :
//Formula : deltaNEU=c/(2*n*L)
L=c/(2*n*deltaNEU);//in meter
disp(L*10^6,"Length of optical cavity in micro meter :")
//Part(b) : 
K=2*n*L/lambda;//No. of longitudinal modes
disp(K,"No. of longitudinal modes : ");