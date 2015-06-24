//Exa 7.9
clc;
clear;
close;
//Given data : 
format('v',7);
l=500;//in meter
VA=200;//in volt
MAxVDrop=6;//in % of declared voltage 
rho=0.014;//in ohm/m 
//VD in the distributor=53*10^3*r
AllowedVD=VA*(6/100);//in volts
r=AllowedVD*10^6/(53*10^3);//in ohm/meter
//formula : R=rho*l/a
a=rho*(2*l)/r;//in m^2
disp(a,"Cross section area(in m^2) :");