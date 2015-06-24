//Exa 2.10
clc;
clear;
close;
//Given Data :
format('v',6);
P=20*10^6;//in VA
cosfi=0.75;//power factor
P=20*10^6*cosfi;//in watts
V=33*10^3;//in Volt
l=20*10^3;//in meter
Eta=85;//in %
rho=3*10^-8;//in ohm-meter
W=P*(100-Eta)/100;//in watts
//For single phase system :
I=P/(V*cosfi);//in Ampere
a1=2*I^2*rho*l/W;//in m^2
V1=2*a1*l;//in m^3
disp(V1,"For single phase system :Volume of the conductor material(in m^3) :");
//For 3 phase 3 wire system :
I=P/(sqrt(3)*V*cosfi);//in Ampere
a2=3*I^2*rho*l/W;//in m^2
V2=3*a2*l;//in m^3
disp(V2,"For three phase 3-wire system :Volume of the conductor material(in m^3) :");