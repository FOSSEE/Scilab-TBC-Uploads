//Exa 1.35
clc;
clear;
close;
format('v',7);

//Given Data :
m=22;//Kg
T=300;//K
V=5;//m^3
M=44;//Kg/Kgmol
a=362.9;//KNm^4/Kgmol^2
b=0.0314;//m^3/Kgmol
Rdash=8314.3;//gas constant
R=Rdash/M;//Nm/KgK
p=m*R*T/V;//Pa
p=p/10^5;//bar
disp(p,"Pressure, when gas behaves like a perfect gas in bar : ");
Vdash=V/m*M;//m^3/Kgmole
//[p+a/vm^2]*[vm-b]=R*T
p=Rdash*T/(Vdash-b)-a*10^3/Vdash^2;//N/m^2
disp(p/10^5,"Pressure using Vander Walls equation in bar : ");
