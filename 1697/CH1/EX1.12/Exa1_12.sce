//Exa 1.12
clc;
clear;
close;
//given data :
r=10;//in Km
Erms=10;//in mV/m
r1=20;//in Km
//Formula : Erms=sqrt(90*W)/r;//in V/m
//Let swrt(90*W)=a
a=Erms*r;
Erms1=a/r1;//in mV/m
disp(Erms1,"Field strength at 20Km distace in mV/m: ");