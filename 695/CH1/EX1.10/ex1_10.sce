//Caption:Find the average value of emf induced in the coil
//Exa:1.10
clc;
clear;
close;
N=1000;//No.of turns
Phy_1=2000*10^-6;//In Webers
//On reversal of current
Phy_2=2000*10^-6;//In Webers
t=0.2;//in seconds
e=N*(Phy_1-(-Phy_2))/t;
disp(e,'Average value of emf induced in the coil (in volts)=')