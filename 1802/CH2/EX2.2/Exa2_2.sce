//Exa 2.2
clc;
clear;
close;
//Given Data :
format('v',9);
Pt=30*10^6;//in watt
V=220*10^3;//in volt
l=275*10^3;//in meter
R=0.173;//in ohm/km
Eta=90;//in %
density=8.9;//copper density
Loss=100-Eta;//in %
cosfi=0.8;//powerfactor
disp("3-phase 3 wire :");
IL=Pt/(sqrt(3)*V*cosfi);//in Ampere
LineLosses=(Loss/100)*Pt;//in watts
rho=R*10^-4/(1*10^3);//in ohm-meter
a=3*IL^2*rho*l/(LineLosses);//in m^2
Volume=3*a*l;//in m^3
Cu_weight=Volume*density;//in Tones
disp(Cu_weight,"Weight of copper(in Tones) : ");
disp("Single phase 2 wire :");
IL=Pt/(V*cosfi);//in Ampere
a=2*IL^2*rho*l/(LineLosses);//in m^2
Volume=2*a*l;//in m^3
Cu_weight=Volume*density;//in Tones
disp(Cu_weight,"Weight of copper(in Tones) : ");
//Note : answer is not accurate in the book.