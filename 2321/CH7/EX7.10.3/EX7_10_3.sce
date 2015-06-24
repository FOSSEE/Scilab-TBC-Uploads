//Example No. 7.10.3
clc;
clear;
close;
format('v',6);
N=25;//no. of turns
Vrms=150;//µV(emf induced)
f=500;//kHz(tuned frequency)
A=0.5^2;//m²(Area of loop)
theta=0;//degree(angle)
c=3*10^8;//m/s////Speed of light
lambda=c/(f*10^3);//m(Wavelength)
Erms=lambda/(2*%pi*A*N*cosd(theta))*Vrms*10^-6;//V/m(maximum emf induced)
disp(Erms*10^3,"Field strength in mV/m : ");
