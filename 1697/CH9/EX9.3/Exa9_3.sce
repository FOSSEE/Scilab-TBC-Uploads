//Exa 9.3
clc;
clear;
close;
//given data :
HT=10;//in meter
HR=3;//in meter
P=200;//in W
D=50;//in Km
D=D*10^3;//in Km
f=150;//in MHz
c=3*10^8;//speed of light in m/s
lambda=c/(f*10^6);//in meter
E=88*sqrt(P)*HT*HR/(lambda*D^2);//in m
disp(E*10^6,"Field Strength at 20 Km in microV/m:")