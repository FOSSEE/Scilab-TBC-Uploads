// Exa 4.21
clc;
clear;
close;
format('v',6)
// Given data
Vm = 100;// in V
phi1= 30;// in °
Im = 15;// in A
phi2= 60;// in °
V= Vm/sqrt(2)*expm(phi1*%i*%pi/180);// in V
I= Im/sqrt(2)*expm(phi2*%i*%pi/180);// in A
Z= V/I;// in ohm
R= real(Z);// in ohm
XC= abs(imag(Z));// in ohm
phi= atand(imag(Z),real(Z));// in °
P= abs(V)*abs(I)*cosd(phi);// in W
disp("The impedance is : "+string(Z)+" Ω")
disp("The resistance is : "+string(R)+" Ω")
disp("The reactance is : "+string(XC)+" Ω")
disp("The power is : "+string(P)+" W")
disp("The power factor is : "+string(cosd(phi))+" leading")
