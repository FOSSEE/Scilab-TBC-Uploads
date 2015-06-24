//Exa 1.14
clc;
clear;
close;
//given data :
Irms=30;//in A
f=1;//in MHz
Erms=10;//in mV/m
Erms=Erms*10^-3;//in V/m
r=50;//in Km
r=r*10^3;//in m
c=3*10^8;//speed of light i m/s
lambda=c/(f*10^6);//in m
le=Erms*lambda*r/(120*%pi*Irms);//in m
disp(le,"Effetive height of Antenna in meter : ");