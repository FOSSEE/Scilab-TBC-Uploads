//Exa 1.17
clc;
clear;
close;
//given data :
r=2;//in Km
r=r*10^3;//in m
Wt=1;//in KW
Wt=Wt*10^3;//in Watt
Erms=sqrt(30*Wt)/r;//in V/m
disp(Erms*10^3,"Field strength at 2Km distace in mV/m: ");