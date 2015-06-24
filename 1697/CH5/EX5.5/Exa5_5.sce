//Exa 5.5
clc;
clear;
close;
//Given data :
N=100;//No. of turns
A=2;//in m^2
f=10;//in MHz
f=f*10^6;//in Hz
Q=150;//Quality factor
c=3*10^8;//speed of light in m/s
lambda=c/f;//in meter
Erms=10*10^-6;//in V/m
theta=60;//in degree
Vrms=2*%pi*Erms*A*N*cos(theta*%pi/180)/lambda;
Vin=Vrms*Q;//in Volts
disp(Vin*1000,"Voltage to the receiver in mV : ");
//Note : Answer in the book is wrong.