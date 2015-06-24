//Exa 5.4
clc;
clear;
close;
//Given data :
N=20;//turns
D=1;//in meter
r=D/2;//in meter
E=200*10^-6;//in V/m
L=50*10^-6;//in H
R=2;//in Ohm
f=1.5;//in MHz
f=f*10^6;//in Hz
c=3*10^8;//speed of light in m/s
lambda=c/f;//in meter
A=%pi*r^2;//in m^2
Vrms=2*%pi*E*A*N/lambda;//in Volts
Q=2*%pi*f*L/R;//unitless
Vc_rms=Vrms*Q;//in Volts
disp(Vc_rms*1000,"Voltage across the capacitor in mV :");
//Note : Answer in the book is wrong.