//Exa 2.6
clc;
clear;
close;
//Given Data :
format('v',8);
P=50*10^6;//in watt
VL=220*10^3;//in volt
cosfi=0.8//unitless
Eta=90;//in %
l=200*10^3;//in meter
rho=1.75*10^-8;//in ohm-cm
W=P*(100-Eta)/100;//in Wats(Line losses)
//Part (i) : 3 phase 3 wire with Cu condutor
gravity=8.9;//specific gravity
IL=P/(sqrt(3)*VL*cosfi);//in Ampere
a=3*IL^2*rho*l/W;//in m^2
Vol3=3*a*l;//volume of 3 lines(in m^3)
CuWeight=Vol3*gravity;//in Tones
disp(CuWeight,"Weight of copper(in Tones) :");
//Part (ii) : When Al conductor is used.
gravity=2.7;//specific gravity
rho=3*10^-8;//in ohm-meter
a=3*IL^2*rho*(l/W);//in m^2
Vol=3*a*l;//volume of 3 lines(in m^3)
AlWeight=Vol*gravity;//in Tones
disp(AlWeight,"Weight of Alluminium(in Tones) :");