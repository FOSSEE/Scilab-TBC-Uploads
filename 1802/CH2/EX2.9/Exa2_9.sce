//Exa 2.9
clc;
clear;
close;
//Given Data :
format('v',6);
P=30*10^6;//in watts
V=220*10^3;//in Volt
l=250*10^3;//in meter
Eta=85;//in %
rho=3*10^-8;//in ohm-meter
cosfi=0.8;//power factor
W=P*(100-Eta)/100;//in watts
I=P/(sqrt(3)*V*cosfi);//in Ampere
a=3*I^2*rho*l/W;//in m^2
Volume=3*a*l;//in m^3
disp(Volume,"Volume of the conductor material(in m^3) :");