//Caption:Find the average value of emf induced across the feild terminals
//Exa:1.12
clc;
clear;
close;
P=4;//no of poles
N=4*250;//No.of turns
Phy_1=40*P*10^-3;//In Webers
Phy_2=5*P*10^-3;//In Webers
t=0.1;//in seconds
e=N*(Phy_1-Phy_2)/t;
disp(e,'average value of emf induced across the feild terminals (in volts)=')