//Exa2.36
clc;
clear;
close;
//given data
Hc_0=8*10^4;//in A/m
Tc=7.2;//in K
T=4.5;//in K
d=1;//in mm
r=d/2;//in mm
r=r*10^-3;//in m
Hc=Hc_0*[1-(T/Tc)^2]';
disp("The critical field at T=4.5 K is : "+string(Hc)+" A/m");
Ic=2*%pi*r*Hc;
disp("Critical current is : "+string(Ic)+" A");