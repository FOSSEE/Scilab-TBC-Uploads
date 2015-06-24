//Exa2.31
clc;
clear;
close;
//given data
rho=146*10^-6// in ohm-cm
a=1;//in cm^2
l=1;//in cm
// let current = i
i=0.06;//in amp 
R=rho*l/a;//in ohm
// Let potential difference per degree centigrade = P
P=i*R;// By Ohm's law
disp("Potential difference per degree centigrade is : "+string(P)+" volt");