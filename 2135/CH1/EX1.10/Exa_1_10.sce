//Exa 1.10
clc;
clear;
close;
format('v',9);

//Given Data :
Patm=75;//mm of Hg
Patm=Patm*1.01325/76;//bar
rho=800;//Kg.m^3
h=30/100;//m
g=9.81;//gravity constant
deltaP=rho*g*h*10^-5;//bar
Pabs=deltaP+Patm;//bar
disp(Pabs,"Absolute pressure of gas in bar : ");
