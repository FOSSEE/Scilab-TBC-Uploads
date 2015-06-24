//Exa 3.5
clc;
clear;
close;
//given data
L=100;//in uM
A=10&-7;//in cm^2
th=10^-6;//in sec
V=12;//in Volts
ue=0.13;//in m^2/V-s
uh=0.05;//in m^2/V-s
E=V/(L*10^-6);//in V/m
tn=(L*10^-6)/(ue*E);
disp(tn,"Electron transit time in sec is ");
Gain=(1+uh/ue)*(th/tn);
disp(Gain,"Photoconductor gain is ");