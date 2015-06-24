//Exa 1.39
clc;
clear;
close;
format('v',7);

//Given Data :
V=0.01653;//m^3
m=5.6;//Kg
M=28;//Kg/Kgmol
p=200;//bar
Z=0.605;
Rdash=8314.3;//J/Kgk
R=Rdash/M;//J/Kgk
//p*V=m*Z*R*T
T=p*10^5*V/m/Z/R;//K
disp(T,"Temperature in K : ");
